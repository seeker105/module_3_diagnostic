class Station < OpenStruct
  def initialize(station_hash)
    @fuel_type_code = station_hash[:fuel_type_code]
    @name = station_hash[:station_name]
    @address = station_hash[:street_address]
    @directions = station_hash[:intersection_directions]
    @city = station_hash[:city]
    @state = station_hash[:state]
    @zip = station_hash[:zip]
  end

end
