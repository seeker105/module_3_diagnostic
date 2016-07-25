class FinderService

  def get_electric_and_propane(zip)
    conn = Faraday.new(:url => "https://api.data.gov/nrel/alt-fuel-stations/v1.json")
    response = conn.get do |req|
      # req.url = 'v1.json'
      req.params['api_key'] = ENV["nrel_api_key"]
      req.params['fuel_type'] = "ELEC, LPG"
      req.params['zip'] = zip
    end
    result = JSON.parse(response.body, :symbolize_names => true)
    parse_result(result[:fuel_stations])
  end

  def parse_result(result)
    stations = result.map do |station_hash|
      Station.new(station_hash)
    end
  end

end
