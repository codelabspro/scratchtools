require 'nokogiri'
require 'open-uri'

xmldoc = Nokogiri::XML(open("scratchtools.xml"))

puts xmldoc

