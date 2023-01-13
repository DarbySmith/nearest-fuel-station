require 'rails_helper'

RSpec.describe FuelStationFacade do
  describe 'class method' do
    describe '#fuel_stations' do
      it 'returns fuel stations' do
        stations = FuelStationFacade.fuel_stations('5224 W 25th Ave, Denver, CO 80214')

        expect(stations).to be_an(Array)

        expect(stations[0]).to be_instance_of(FuelStation)
        expect(stations[0].name).to_not be(nil)
        expect(stations[0].address).to_not be(nil)
        expect(stations[0].fuel_type).to_not be(nil)
        expect(stations[0].access_times).to_not be(nil)
      end
    end
  end
end