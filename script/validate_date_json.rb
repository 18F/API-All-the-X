#encoding: UTF-8
require 'rubygems'
require 'typhoeus'
require 'csv'
require 'multi_json'
require 'guess_html_encoding'

class ApiRegistry
	attr_accessor :apis

	ORG_CSV_FILE = "data_agencies.csv"
	API_CSV_FILE = "api_details.csv"
	TIMEOUT = 15*60

	def initialize
		@api_jsons = {}
		@api_csvs = []
		@agencies = {}
	end

	def utf8_string(string)
		return nil if string.nil?
		GuessHtmlEncoding.encode(string)
	end

	def process_json(agency, url, body)
		puts "#{url}"
		count = 0
		data = MultiJson.load(body)

		if data.is_a?(Array)
			datasets = data
		else
			datasets = data["dataset"]
		end

		datasets.each do |dataset|
			dist = dataset["distribution"]
			if dist 
				dist_records = dist.to_a

				api_record = dist_records.detect {|d| d["format"] == "API" || d["format"] == "feed" }

				if api_record
					# add record to @apis
					api_url = api_record["accessURL"] || api_record["downloadURL"]
	
					unless @api_jsons.key?(api_url)
						@api_jsons[api_url] = dataset
						
						@api_csvs << [agency, api_url, utf8_string(dataset["title"]), utf8_string(dataset["description"]).gsub(/\n+/, " / ").gsub(/\s+/, ' '), dataset["modified"], dataset["identifier"], 
												  dataset["accessLevel"], dataset["accrualPeriodicity"], utf8_string(dataset["license"])]
						count += 1

						puts "  + #{api_url}"
					end
				end
			end
		end

		@agencies[agency] ||= {:agency => agency, :url => url, :count => count, :error => nil}
		
		if (count > 0)
			puts "  + #{count} APIs found"
		else
			puts "  ! NO APIS FOUND"
		end
	end

	def run
		hydra = Typhoeus::Hydra.new(max_concurrency: 5)

		CSV.foreach(ORG_CSV_FILE, :headers => true) do |row|
			req = Typhoeus::Request.new(row["URL"], followlocation: true, timeout: TIMEOUT, accept_encoding: "gzip")
			agency = row["Agency"]
			url = row["URL"]

			req.on_complete do |response|
		  	if response.success?
		  		begin
			    	process_json(agency, url, response.body)
			    rescue MultiJson::ParseError
			    	puts "#{agency}: JSON parsing error"
			    end
		  	elsif response.timed_out?
		    	# aw hell no
		    	puts("#{agency}: got a time out")
		    	@agencies[agency] ||= {:agency => agency, :url => url, :count => 0, :error => "Request timed out"}
		  	elsif response.code == 0
		    	# Could not get an http response, something's wrong.
		    	puts("#{agency}: #{response.return_message}")
		    	@agencies[agency] ||= {:agency => agency, :url => url, :count => 0, :error => response.return_message}
		  	else
		    	# Received a non-successful http response.
		    	puts("#{agency}: HTTP request failed #{response.code.to_s}")
		    	@agencies[agency] ||= {:agency => agency, :url => url, :count => 0, :error => "HTTP #{response.code.to_s}"}
		  	end
			end

			hydra.add(req)
		end
		
		hydra.run
	end

	def export_csvs
		# dump agencies data out
		CSV.open(ORG_CSV_FILE, "wb") do |csv|
			csv << ["Agency", "URL", "Count", "Error"]

			@agencies.keys.sort.each do |k|
				agency = @agencies[k]
				csv << [agency[:agency], agency[:url], agency[:count], agency[:error]]
			end
		end

		CSV.open(API_CSV_FILE, "w:UTF8") do |csv|
			csv << ["Agency", "URL", "Title", "Description", "Modified", "Identifier", "Access", "Periodicity", "License"]

			@api_csvs.each do |api|
				puts api
				csv << api
			end
		end
	end

	def export_json
		File.open("./combined_data.json", "wb") do |file|
			file.write(MultiJson.dump(@api_jsons.keys.sort.map {|k| @api_jsons[k] }, pretty: true))
		end
	end
end

a = ApiRegistry.new
a.run
a.export_json
a.export_csvs

