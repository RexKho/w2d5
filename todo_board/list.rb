require_relative "./item.rb"

class List

    attr_accessor :label

    def initialize(label)
        @label = label
        @items = []



    end


    def add_item(title, deadline, description = "")

        if Item.valid_date?(deadline)
            @items << Item.new(title, deadline, description)
            return true
        else
            return false
        end
    end

    def size
        return @items.length
    end

    def valid_index?(idx)
        if idx < 0
            return false
        end 
        if idx > @items.length-1
            return false
        end
        return true
    end

    def swap(idx1, idx2)
        if valid_index?(idx1) && valid_index?(idx2)
            @items[idx1], @items[idx2] = @items[idx2], @items[idx1]
            return true
        else
            return false
        end
    end

    def [](index)
        if valid_index?(index)
            return @items[index]
        else
            nil
        end
    end

    def priority
        @items[0]
    end


    def print
        puts "-"*30
        puts "#{"".ljust(10, " ")}GROCERIES#{"".ljust(10, " ")}"
        puts "-"*30
        puts "#{"Index".ljust(7, " ")}| #{"Item".ljust(10, " ")} | Deadline"
        puts "-"*30
        items.length.times do |num|
            puts "#{@items[num].ljust(7, " ")}| #{@items[num].title.ljust(10, " ")} | #{@items[num].deadline}"
        end
        puts "-"*30
    end

    def print_full_item(index)
        if valid_index?(index)
            puts "-"*30
            puts "#{@items[index].ljust(20, " ")}|#{@items[index].deadline}"
            puts @items[index].description
            puts "-"*30
        end
    end

    def print_priority
        print_full_item(0)
    end
end