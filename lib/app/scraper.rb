class Scraper
    def initialize
      @base_url = "https://www.dupontregistry.com"
    end
  
    def first_scrape
     html = open(@base_url +"/autos/results/bentley/for-sale")
      html_parsed_to_elements = Nokogiri::HTML(html)
      cars = html_parsed_to_elements.css('.searchResults')
      
  
  
      cars.each do |car|
      car.css('a').children[0].text[0..4].strip.to_i
      car_model = car.css("a").children[0].text
      year = car.css('a').children[0].text[0..4].strip.to_i
      price = car.css(".cost").children[1]
      miles = car.css('.run').children[0].text
     
      year = Year.find_by_year(year)
  
      car = Car.new(car_model, price, miles, year,dealer_details,cardetails_url)
     end
    end
  def second_scrape(year, cardetails_url)
      cardetails_html = open(@base_url+cardetails_url)
      cardetails_html_parsed_to_elements = Nokogiri::HTML(cardetails_html)
      car.cardetails_year = html_parsed_to_elements.css('a').children[0].text[0..4].strip.to_i
      car.cardetails_url = html_parsed_to_elements.css("p")[0].text.gsub(/\s+/mu," ").strip
      car.dealer_details = html_parsed_to_elements.css("div#ContactId.dealerIfoBox").text[0..10].strip.to_i
  end
  end
  