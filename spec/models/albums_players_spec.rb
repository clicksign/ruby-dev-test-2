require 'rails_helper'

RSpec.describe Album, :type => :model do
  it "is a Album with only one artist" do
    album = Album.new(name:'Kind of Blue')
    player = Player.new(name:'Miles Davis')
      
    album.player.append(player) 
    album.save()

    expect(album.player[0]).to eq(player)
    expect(player.albums[0]).to eq(album)
  end
  
  it "is a Album with more than one artist" do
    album = Album.new(name:'Rubber Soul')
    player_paul = Player.new(name:'Paul Mccartney')
    player_john = Player.new(name:'John Lennon')
  
    album.player.append(player_paul)
    album.player.append(player_john) 
    album.save()

    expect(album.player[0]).to eq(player_paul)
    expect(album.player[1]).to eq(player_john)
    expect(player_paul.albums[0]).to eq(album)
    expect(player_john.albums[0]).to eq(album)
  end
end

RSpec.describe Player, :type => :model do
  it "is a Player participating in only one album" do
    album = Album.new(name:'Kind of Blue')
    player = Player.new(name:'Miles Davis')

    album.player.append(player) 
    album.save()

    expect(album.player[0]).to eq(player)
    expect(player.albums[0]).to eq(album)
  end
  
  it "is a Player participating in more than one album" do
    player_coltrane = Player.new(name:'John Coltrane')
    album_1 = Album.new(name:'Giant Steps')
    album_2 = Album.new(name:'Blue train')
  
    player_coltrane.albums.append(album_1)
    player_coltrane.albums.append(album_2)
    player_coltrane.save()

    expect(player_coltrane.albums[0]).to eq(album_1)
    expect(player_coltrane.albums[1]).to eq(album_2)
    expect(album_1.player[0]).to eq(player_coltrane)
    expect(album_2.player[0]).to eq(player_coltrane)
  end
end


