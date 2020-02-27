class AddUniquePairs < ActiveRecord::Migration[5.2]
  def change
    remove_index :artwork_shares, [:artwork_id, :viewer_id]
    remove_index :artworks, [:title, :artist_id]
  end
end
