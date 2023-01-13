class FuelStationFacade
  def self.fuel_stations(address)
    NrelService.nearest_stations(address)[:fuel_stations].map do |data|
      FuelStation.new(data)
    end
  end
end