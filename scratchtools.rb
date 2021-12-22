require 'nokogiri'
require 'open-uri'

inputfile = File.open("input.xml")
inputfilexmldoc = Nokogiri::XML(inputfile)
inputfile.close
print inputfilexmldoc 

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


inputconstructdoc = File.open("inputfile.xml")
constructdoc = Nokogiri::HTML <<-EOHTML
<?xml version="1.0" encoding="utf-8"?>
 <body>
    <item>
      <time>05.04.2011 9:53:23</time>
      <infrastructure>cloud</infrastructure>
      <database>postgres</database>
      <frontend>Next</frontend>
      <backend>Python</backend>
    </item>
  </body>
</xml>
EOHTML

hammer = constructdoc.at_css "time"
outputfile = File.new("outputfile.xml", "w")
outputfile.puts constructdoc.to_html
outputfile.close
