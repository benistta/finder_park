class ParksFacade
class << self
    def get_list(state)
        json = ParksService.get_list_of_parks(state)
        # require 'pry'; binding.pry
        json[:data].map do |park|
            Park.new(park)
            # require 'pry'; binding.pry
        end
    end

    def get_number_of_parks(state)
        json = ParksService.get_list_of_parks(state)[:total]

    end
end
end