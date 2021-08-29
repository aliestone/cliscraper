require 'nokogiri'
require 'open-uri'

def scraping 
    html = open("#{url}").read
    nokogiri_doc = Nokogiri::HTML(html)
    final_array = []

    nokogiri_doc.search (".heading"). each do |element|
        element = element.text
        final_array << element
    end 

    final_array.each_with_index do |index, element|
        puts "#{index + 1} - #{element}"
    end 
   
 end 

scraping ('https://www.oyster.com/articles/usa-travel-bucket-list-places-to-visit-before-you-die/')