class RemoveForeignkeyPlayer < ActiveRecord::Migration[5.2]
  def change
    def change
      create_table :albums do |t|
        t.string :name
        t.timestamps
      end
    end
  end
end
