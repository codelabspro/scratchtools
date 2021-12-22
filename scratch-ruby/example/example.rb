require 'nokogiri'

xml = Nokogiri::XML::Builder.new { |xml| 

    xml.body do 
        xml.node1 "outer"
        xml.node2 "inner"
        xml.node3 do
            xml.node3_1 "message"
        end
    end
}.to_xml

puts xml

File.open("scratchtools.md", "w") { |f| f.write(xml)}