require 'rails_helper'

RSpec.describe NrelService do
  describe 'class methods' do
    describe '#nearest_stations' do
      it 'returns the nearest stations' do
        stations = NrelService.nearest_stations('5224 W 25th Ave, Denver, CO 80214')

        expect(stations).to be_a(Hash)
        expect(stations[:fuel_stations]).to be_an(Array)

        station = stations[:fuel_stations][0]

        expect(station).to have_key(:station_name)
        expect(station[:station_name]).to be_a(String)

        expect(station).to have_key(:fuel_type_code)
        expect(station[:fuel_type_code]).to be_a(String)

        expect(station).to have_key(:street_address)
        expect(station[:street_address]).to be_a(String)

        expect(station).to have_key(:city)
        expect(station[:city]).to be_a(String)

        expect(station).to have_key(:state)
        expect(station[:state]).to be_a(String)

        expect(station).to have_key(:zip)
        expect(station[:zip]).to be_a(String)

        expect(station).to have_key(:access_days_time)
        expect(station[:access_days_time]).to be_a(String)
      end
    end
  end
end