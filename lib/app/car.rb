class Car
     def initialize(car_model, price, miles, cardetails_url,url,cardetails_year,dealer_details)
         
          @car_model = car_model.capitalize
          @price = price
          @miles = miles
          @cardetails_url = cardetails_url
          @cardetails_year = cardetails_year
          @dealer_details=dealer_details
          @url = "https://www.dupontregistry.com/autos/results/#{car_model}/for-sale".sub(" ", "--")

        
        

    end
end