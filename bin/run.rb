require_relative "../lib/environment.rb"
CLI.new.run
# Scraper.new.first_scrape
# binding.pry
# #url ="https://www.dupontregistry.com/autos/results/bentley/continental--gt/for-sale/refine?distance=0&pagenum=1&perpage=10&sort=price_asc&zipcode=00000&inv=false"
# url="https://www.dupontregistry.com/autos/results/bentley/for-sale"
# html = open(url)
# html_parsed_to_elements = Nokogiri::HTML(html)
# cars = html_parsed_to_elements.css('.searchResults')
# #Car Details Link: cars[0].css("p")[0].children.text
   
#     cars.each do|car|
#         #car.css('a').children[0].text[0..4].strip.to_i
#     car.css('a').children[0].text[0..4].strip.to_i
#     car_model = car.css("a").children[0].text
#     year = car.css('a').children[0].text[0..4].strip.to_i
#     price = car.css(".cost").children[1]
#     miles = car.css('.run').children[0].text


#     cardetails_url = car.css("p")[0].text.gsub(/\s+/mu," ").strip
#     dealer_details = cars[0].css("div#ContactId.dealerIfoBox").text[0..10].strip.to_i
#     cardetails_html = open("https://www.dupontregistry.com/autos/Inquire.aspx?sellerType=dealer&dname=Ferrari%20of%20Fort%20Lauderdale&dphone=888-928-7002&year=2014&make=Bentley&model=Flying%20Spur&vid=2305494&vguid=012c28d8-6a35-4cb2-aace-b957a20e3ab4"+cardetails_url)
#     cardetails_html_parsed_to_elements = Nokogiri::HTML(cardetails_html)
#     searchResults = cardetails_html_parsed_to_elements.css("div.p")
   
#     #year = Year.find_by_car(year) 
#     Car.new(car_model, price, miles, cardetails_url,url,year,dealer_details)
   
#    puts "******************************************************************"
# puts "  "
# puts "Car_Model: #{car_model}"
# puts "Year_Manufactured: #{year}"
# puts "Price: #{price}"
# puts "Miles: #{miles}"
# puts "  "
# puts "Car_Description_In _Short: #{cardetails_url}"

# puts "  "
# puts "For_More_details Visit: #{url}"
# puts "  "
# puts "Call for further Details: (888) 538-8468#{dealer_details}"
# end
# #binding.pry

