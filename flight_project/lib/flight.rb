class Flight 
    attr_reader :passengers

    def initialize(flightNum, capacity)
        @flight_number = flightNum
        @capacity = capacity
        @passengers = []

    end

    def full?
        if @passengers.length >= @capacity
            return true
        else
            return false
        end

    end

    



end