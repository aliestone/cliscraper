class Cliscraper::CLI
    def call
        Cliscraper::Scraper.scrape_sites
        welcome
        display_sites
        menu
        goodbye
    end
      
    def welcome
        puts "Welcome, where would you like to go today?"
    end
      
    def display_sites
        Site.all.each.with_index(1) do |site, i|
          puts "#{i}.   #{site.name}"
        end
    end
      
    def display_info
        Site.all.each.with_index(1) do |site, i|
        end
    end
    

    def menu
        input = nil
        while input != "exit"
            puts "Enter the number of the location you want more details about"
            input = gets.strip.downcase
            if input.to_i > 0 && input.to_i < 25
                the_site = display_info[input.to_i-1]
                puts "#{the_site.name} - #{the_site.info}"
            elsif input == "list"
                display_sites
            elsif input != "exit"
                puts "I'm sorry, I don't quite understand..."
            else
                puts "Bye! See you next time"                                  
                exit
            end 
        end
    end
end 