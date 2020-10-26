class Year
    attr_accessor :car_year
    @@all=[]
        def initialize(car_year)
            @car_year =car_year
            @@all << self   
        end
        def self.find_by_year(car_year)
            found_car self.all.find{|car|car.year == car_year}
            if found_car
                return found_car
            else
                return self.new(car_year)
            #binding.pry
            end
        end 
    end