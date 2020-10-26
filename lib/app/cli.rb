class CLI
    def run 
        puts "Hello! Welcome to the Bentley Autos CLI Application"
        sleep(1)
        puts "Loading cars.....This might take a while!"
        Scraper.new.first_scrape
        puts"VROOOOOM!"
        binding.pry
        sleep(1)
        puts"Would you like to see?"
        sleep(1)
        puts "1. Year Manufactured"
        puts "2. display all cars"
        puts " "
        puts "Enter 1 or 2"
        user_input = gets.chomp
        if user_input == "1"
         Car.print_all_cars_to_be_selected
         puts "Enter a number 1-10 to view that car"
         car_select = gets.chomp
         select_to_index = car_select.to_i -1
         Car.all[select_to_index].print_full_car
    elsif user_input == "2"
        def get_all_page_urls(array_of_ints)
            #gets URLs of all pages, not just the first page
              array_of_ints.map { |number| 
               @url + "/pagenum=#{number}" }
          end 
          
          def get_number_of_pages(listings, cars_per_page)
            #finds how many pages of listings exist
           a = listings % cars_per_page
           if a == 0
              listings / cars_per_page
           else 
              listings / cars_per_page + 1
           end 
          end 
          
          def build_full_cars(number_of_pages)
            #builds an array of car hashes for each page of listings, starting on page 2
           a = [*2..number_of_pages]
           all_page_urls = get_all_page_urls(a)
          
           all_page_urls.map { |url| 
           pu = parse_url(url)
           cars = pu.css('div.searchResults')
           create_car_hash(cars)
          }
        end 
    end
end
