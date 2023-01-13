require 'rails_helper'

RSpec.describe FuelStation do
  describe 'initialize' do
    it 'exists' do
      attributes = {
          station_name: "Target T2225",
          fuel_type_code: "ELEC",
          street_address: "1985 Sheridan Blvd.",
          city: "Edgewater",
          state: "CO",
          zip: "80214",
          access_days_time: "24 hours daily"
      }

      station = FuelStation.new(attributes)
      expect(station).to be_instance_of(FuelStation)
      expect(station.name).to eq("Target T2225")
      expect(station.address).to eq("1985 Sheridan Blvd., Edgewater, CO 80214")
      expect(station.fuel_type).to eq("ELEC")
      expect(station.access_times).to eq("24 hours daily")
    end
  end
end