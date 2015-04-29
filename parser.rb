require 'json'

jsonFile = File.read('universities.json')
dataHash = JSON.parse(jsonFile)

# Create a file for writing 
outputFile = File.new("databaseSeeds.txt" , 'w')

dataHash.each { |uni|
  outputFile.puts "University.create(\
name: \"#{uni["name"]}\" , \
country: \"#{uni["country"]}\" , \
web_page: \"#{uni["web_page"]}\" , \
domain: \"#{uni["domain"]}\")\n" 
}

# Close filestream
outputFile.close