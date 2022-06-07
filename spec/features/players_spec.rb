require 'rails_helper'

RSpec.feature "Players", type: :feature do
  context 'create new player' do
    scenario "should redirect main page when success" do
      visit new_player_path
      within('form') do
        fill_in with: 'Madonna'
      end
      click_button 'Create Player'
      expect(page).to have_current_path(root_path) 
    end
  end
end
