require 'nokogiri'
require 'open-uri'

url = "https://www.oyster.com/articles/usa-travel-bucket-list-places-to-visit-before-you-die/"

def scraping(url)
    html = URI.open(url)
    nokogiri_doc = Nokogiri::HTML(html)
    final_array = []

    nokogiri_doc.search("h2.heading a").each do |element|
        element = element.text
        final_array << element
    end 

    print final_array

    final_array.each_with_index do |element, index|
        puts "#{index + 1} - #{element}"
    end
end 

scraping(url)