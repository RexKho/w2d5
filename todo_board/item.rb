class Item

    def self.valid_date?(date_string)
        newarr = date_string.split("-")
        if newarr[0].length != 4
            return false
        end
        if newarr[1].to_i > 12 ||  newarr[1].to_i < 1
            return false
        end
        if newarr[2].to_i > 31 || newarr[2].to_i < 1
            return false
        end
        return true
    end
    attr_reader :deadline
    attr_accessor :title, :description

    def initialize(title, deadline, description)
        @title = title
        @deadline = deadline
        @description = description
        if !Item.valid_date?(@deadline)
            raise "not a valid date"
        end
    end

    def deadline= (new_description)
        if Item.valid_date?(new_description)
            @deadline = new_description
        end
    end

end