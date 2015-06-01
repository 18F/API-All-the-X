#encoding: UTF-8
require 'rubygems'
require 'typhoeus'
require 'csv'
require 'oj'
require 'multi_json'

class ApiRegistry
	attr_accessor :apis

	def initialize
		@apis = {}
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
	
					unless @apis.key?(api_url)
						@apis[api_url] = dataset
						count += 1
						#puts "  + #{api_url}"
					end
				end
			end
		end

		if (count > 0)
			puts "  + #{count} APIs found"
		else
			puts "  ! NO APIS FOUND"
		end
	end

	def run
		hydra = Typhoeus::Hydra.new(max_concurrency: 5)

		CSV.foreach('data_agencies.csv', :headers => true) do |row|
			req = Typhoeus::Request.new(row["URL"], followlocation: true, timeout: 60, accept_encoding: "gzip")
		
			req.on_complete do |response|
		  	if response.success?
		  		begin
			    	process_json(row["Agency"], row["URL"], response.body)
			    rescue MultiJson::ParseError
			    	puts "#{row["Agency"]}: JSON parsing error"
			    end
		  	elsif response.timed_out?
		    	# aw hell no
		    	puts("#{row["Agency"]}: got a time out")
		  	elsif response.code == 0
		    	# Could not get an http response, something's wrong.
		    	puts("#{row["Agency"]}: #{response.return_message}")
		  	else
		    	# Received a non-successful http response.
		    	puts("#{row["Agency"]}: HTTP request failed #{response.code.to_s}")
		  	end
			end

			hydra.add(req)
		end
		
		hydra.run
	end

	def export_csv
		# dump some fields to a CSV
	end

	def export_json
		File.open("./combined_data.json", "wb") do |file|
			file.write(MultiJson.dump(@apis.keys.sort.map {|k| @apis[k] }, pretty: true))
		end
	end
end

a = ApiRegistry.new
a.run
a.export_json

