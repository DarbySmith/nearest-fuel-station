class MapquestFacade
  def self.directions_info(from, to)
    Mapquest.new(MapquestService.directions(from, to)[:route])
  end
end