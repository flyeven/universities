require 'json'

jsonFile = File.read('universities.json')
dataHash = JSON.parse(jsonFile)

# Create a file for writing 
outputFile = File.new("uni.csv" , 'w')
outputFile.puts "\"name\" , \"web_page\" , \"domain\" , \"country\""

dataHash.each { |uni|
  outputFile.puts "\
\"#{uni["name"]}\" , \
\"#{uni["web_page"]}\" , \
\"#{uni["domain"]}\" , \
\"#{uni["country"]}\" " 
}

# Close filestream
outputFile.close