class AppleTree
    attr_accessor :age
    attr_reader :height, :apple_count
    def initialize(height)
        @age = 0
        @height = height
        @apple_count = 0
    end  
    def year_gone_by
        @age += 1
        @height += ten_percent_of(@height)
        if @age > 3 && @age < 11
            @apple_count += 2
        end 
    end  
    def pick_apples
        @apple_count = 0
    end  
    private
        def ten_percent_of h
            (h * 0.1).round(2)
        end   
end     