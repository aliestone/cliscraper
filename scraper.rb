require 'nokogiri'
require 'open-uri'

url = "https://www.oyster.com/articles/usa-travel-bucket-list-places-to-visit-before-you-die/"

# defines a method that takes in an argument of a url 
def scraping(url)

    # uri opens the url and sets a variable for the html contained 
    html = URI.open(url)

    # sets a variable for the html that is parsed by nokogiri
    nokogiri_doc = Nokogiri::HTML(html)

    # nokogiri searches html document for the a tag within the heading class and iterates through each instance
    nokogiri_doc.search("h2.heading a").each_with_index do |element, index|
        #puts formatted text from the node with index 
        puts "#{index + 1} - #{element.text}"
    end 
end 

#calls method with url argument 
scraping(url)