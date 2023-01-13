require 'rails_helper'

RSpec.describe Mapquest do
  describe 'initialize' do
    it 'exists' do
      attributes = {
        formattedTime: "00:01:03",
        distance: 0.4176,
        legs: [{
          maneuvers: [{
            narrative: "Head east on W 25th Ave. Go for 246 ft."
          },
          {
            narrative: "Turn right onto Sheridan Blvd (CO-95). Go for 0.4 mi.",
          }]
        }]
        }
      directions = Mapquest.new(attributes)
      expect(directions).to be_instance_of(Mapquest)
      expect(directions.distance).to eq(0.4176)
      expect(directions.time).to eq("00:01:03")
      expect(directions.directions).to eq(["Head east on W 25th Ave. Go for 246 ft.", "Turn right onto Sheridan Blvd (CO-95). Go for 0.4 mi."])
    end
  end
end
