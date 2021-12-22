require 'nokogiri'
require 'open-uri'

file = File.open("input.xml")
xmldoc = Nokogiri::XML(file)
file.close
print xmldoc 

xml = Nokogiri::XML::Builder.new { |xml| 

    xml.body do 
        xml.node1 "outer"
        xml.node2 "inner"
        xml.node3 do
            xml.node3_1 "message"
        end
    end
}.to_xml

File.open("output.md", "w") { |f| f.write(xml)}