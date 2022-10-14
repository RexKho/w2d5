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

    def board_passenger(pass)
        if full?
            return
        else
            if pass.has_flight?(@flight_number)
                @passengers << pass
            end

        end
    end

    def list_passengers
        newarr = []
        @passengers.each do |ele|
            newarr << ele.name
        end
        newarr
    end

    def [](index)
        @passengers[index]

    end

    def <<(pass)
        board_passenger(pass)
    end
end