# universities
Contains a JSON file with {uni , country, web_page, domain} for most of the universities in the world as well as  a ruby program for parsing the data

Edit parser.rb if you want to change the output-format/output-file. I have set it up to be seeded into a rails table by the name of universities

validCheck.rb is used to cycle through the data and check that it is all valid (all fields are != "" && != nil)
Change this file if you have more/less validations
