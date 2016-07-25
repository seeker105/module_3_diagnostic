class FinderService

  def get_electric_and_propane(zip)
    conn = Faraday.new(:url => "https://api.data.gov/nrel/alt-fuel-stations/v1.json")
    response = conn.get do |req|
      # req.url = 'v1.json'
      req.params['api_key'] = ENV["nrel_api_key"]
      req.params['fuel_type'] = "ELEC, LPG"
      req.params['zip'] = zip
    end
    result = JSON.parse(response.body)
    byebug
  end

end
