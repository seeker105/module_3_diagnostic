class FinderService

  def get_electric_and_propane(zip)
    byebug
    conn = Faraday.new(:url => "/api/alt-fuel-stations/")
    response = conn.get do |req|
      req.uri = 'v1.json'
      req.params['api_key'] = ENV["nrel_api_key"]
      req.params['fuel_type'] = "ELEC, LPG"
    end
    result = JSON.parse(response.body)
    byebug
  end

end
