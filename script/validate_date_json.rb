require 'rubygems'
require 'typhoeus'
require 'csv'
require 'oj'
require 'multi_json'

class ApiRegistry
	attr_accessor :apis

	def initialize
		@apis = []
	end

	def process_json(agency, url, body)
		puts "#{url}"

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

				dist_records.select {|d| d["format"] == "API"}.each do |drec|
					# add record to @apis
					api_url = drec["accessURL"] || drec["downloadURL"]
					@apis << {
						agency: agency,
						title: dataset["title"],
						description: dataset["description"],
						identifier: dataset["identifier"],
						url: api_url
					}

					puts "  + #{api_url}"

				end
			end
		end
	end

	def run
		hydra = Typhoeus::Hydra.new(max_concurrency: 5)

		CSV.foreach('data_agencies.csv', :headers => true) do |row|
			req = Typhoeus::Request.new(row["URL"], followlocation: true)
		
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
end

a = ApiRegistry.new
a.run

puts a.apis.inspect

