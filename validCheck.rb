# Just a quick check to make sure that every university has every field specified
# in case your application needs every field to be non-null and non-blank
# Result: 1 university is invalid
#   - {"web_page"=>"http:///www.szu.sk/", "country"=>"Slovakia", "domain"=>"", "name"=>"Slovak Medical University"}
require 'json'

# Its a bad field if it is nil or ""
def isBad(field)
	return field == nil || field == ""
end

# Check if uni is valid 
def notValid(uni) 
	return isBad(uni["name"]) ||
	       isBad(uni["country"]) ||
	       isBad(uni["domain"]) ||
	       isBad(uni["web_page"])
end


jsonFile = File.read('universities.json')
dataHash = JSON.parse(jsonFile)

# Print invalid universities to console
dataHash.each { |uni|
	puts uni if notValid uni
}
