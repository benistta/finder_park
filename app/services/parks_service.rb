class ParksService
    class << self
    def get_list_of_parks(state)
    end_point = '/api/v1/parks'
        response = connection.get(end_point) do |req|
            req.params['api_key'] = ENV['parks_api_key']
            req.params['stateCode'] = state
          end
          json = JSON.parse(response.body, symbolize_names: true)
        #   require 'pry'; binding.pry
    end

    # def connection = Faraday.new(
    #     url: 'https://developer.nps.gov'
    # )   
    # end

    def connection 
        Faraday.new(
        url: 'https://developer.nps.gov'
        )
        
    end
    end
end