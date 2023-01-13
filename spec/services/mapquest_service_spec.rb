require 'rails_helper'

RSpec.describe MapquestService do
  describe 'class methods' do
    describe '#directions' do
      it 'returns information about directions from the given location' do
        directions = MapquestService.directions('5224 W 25th Ave, Denver, CO 80214', '1985 Sheridan Blvd., Edgewater, CO 80214')

        expect(directions).to be_a(Hash)
        expect(directions[:route]).to be_a(Hash)

        expect(directions[:route]).to have_key(:distance)
        expect(directions[:route][:distance]).to be_a(Float)

        expect(directions[:route]).to have_key(:formattedTime)
        expect(directions[:route][:formattedTime]).to be_a(String)
        
        expect(directions[:route][:legs][0][:maneuvers][0]).to have_key(:narrative)
        expect(directions[:route][:legs][0][:maneuvers][0][:narrative]).to be_a(String)
      end
    end
  end
end