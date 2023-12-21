class ParksController < ApplicationController
    def index
        # require 'pry'; binding.pry
        @parks = ParksFacade.get_list(params[:state])
        @num_parks = ParksFacade.get_number_of_parks(params[:state])
        # require 'pry'; binding.pry
    end
end