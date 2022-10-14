class Passenger
    attr_reader :name
    def initialize(name)
        @name = name
        @flight_numbers = []
    end

    def has_flight?(fn)
        @flight_numbers.each do |ele|
            if ele.downcase == fn.downcase
                return true
            end 
                
        end

        return false
        
    end

    def add_flight(str)
        if !has_flight?(str)
            @flight_numbers << str.upcase
        end
    end

end