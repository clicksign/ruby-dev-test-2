class CreateParticipations < ActiveRecord::Migration[5.2]
  def self.up
    create_table :participations do |t|
      t.references :album, :player
      t.timestamps
    end
  end

  def self.down
    drop_table :participations
  end
end
