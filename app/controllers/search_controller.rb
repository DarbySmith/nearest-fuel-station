class SearchController < ApplicationController
  def index
    @station = FuelStationFacade.fuel_stations(params[:location])[0]
    @directions = MapquestFacade.directions_info(params[:location], @station.address)
  end
end