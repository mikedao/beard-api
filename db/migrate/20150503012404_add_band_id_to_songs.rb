class AddBandIdToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :band_id, :integer
    add_index :songs, :band_id
  end
end
