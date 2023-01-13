require 'rails_helper'

RSpec.describe 'can search for a fuel station' do
  it 'returns the closest fuel station' do
    visit root_path

    select "Griffin Coffee", from: :location
    click_on "Find Nearest Station"

    expect(current_path).to eq('/search')
    expect(page).to have_content("Target T2225")
    expect(page).to have_content("1985 Sheridan Blvd., Edgewater, CO 80214")
    expect(page).to have_content("ELEC")
    expect(page).to have_content("24 hours daily")
    expect(page).to have_content("0.4176")
    expect(page).to have_content("00:01:03")
    expect(page).to have_content("Head east on W 25th Ave. Go for 246 ft.")
  end
end
