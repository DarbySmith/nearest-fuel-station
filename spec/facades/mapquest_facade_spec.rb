require 'rails_helper'

RSpec.describe MapquestFacade do
  describe 'class methods' do
    describe '#directions_info' do
      it 'makes objects for directions' do
        directions = MapquestFacade.directions_info('5224 W 25th Ave, Denver, CO 80214', '1985 Sheridan Blvd., Edgewater, CO 80214')

        expect(directions).to be_instance_of(Mapquest)
        expect(directions.distance).to eq(0.4176)
        expect(directions.time).to eq("00:01:03")
        expect(directions.directions).to include("Head east on W 25th Ave. Go for 246 ft.")
      end
    end
  end
end