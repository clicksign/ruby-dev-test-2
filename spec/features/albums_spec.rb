require 'rails_helper'

RSpec.feature "Albums", type: :feature do
  context 'create new album with one player' do
    let!(:album) do
      create(:album, name: 'The Wall', players: [
        create(:player, name: 'Madonna')
      ]  )
    end
    scenario "should redirect page when success" do
      visit new_album_path
      within('form') do
        fill_in 'Name', with: 'The Wall'
        select 'Madonna', from: 'album_player_ids'
      end
      click_button 'commit'
      expect(page).to have_current_path(root_path)
    end
  end
  
  context 'create new album with more than one player' do
    let!(:album) do
      create(:album, name: 'The Wall', players: [
        create(:player, name: 'Madonna'),
        create(:player, name: 'Shakira')
      ]  )
    end
    scenario "should redirect page when success" do
      visit new_album_path
      within('form') do
        fill_in 'Name', with: 'The Wall'
        select 'Madonna', from: 'album_player_ids'
        select 'Shakira', from: 'album_player_ids'
      end
      click_button 'commit'
      expect(page).to have_current_path(root_path)
    end
  end
end