namespace :migrate_albums_players do
  desc 'Execute promotion data migration'

  task migrate: :environment do
    puts 'Migrating albums_players...'
    ActiveRecord::Base.connection.execute('INSERT INTO albums_players (album_id, player_id) SELECT id, player_id FROM albums')
  end
end
