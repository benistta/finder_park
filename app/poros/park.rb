class Park
    attr_reader :name,
                :description,
                :direction_info,
                :hours

    def initialize(data)
        # require 'pry'; binding.pry
        @name = data[:fullName]
        @description = data[:description]
        @direction_info =data[:directionsInfo]
        # @hours = data[:operatingHours][0][:standardHours]
        empty_hours(data)
        # require 'pry'; binding.pry
    end

   def empty_hours(data)
        if data && data[:operatingHours] && data[:operatingHours][0]
            @hours = data[:operatingHours][0][:standardHours]
        else
            @hours = 'There is no hours'
        end
   end
end