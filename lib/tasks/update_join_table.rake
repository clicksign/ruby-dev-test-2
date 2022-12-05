namespace :update_join_table do
  desc "TODO"
  task tranfer_albums: :environment do
    albuns = Album.all
    albuns.each do |album|
      @album = album.update!(player_ids: [album.player_id])
      if @album == true && !album.player_id.nil?
        album.player_id = nil
        album.save!
      end
    end
  end
end
