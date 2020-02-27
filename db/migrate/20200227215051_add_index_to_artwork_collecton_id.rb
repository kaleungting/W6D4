class AddIndexToArtworkCollectonId < ActiveRecord::Migration[5.2]
  def change
    add_index :artworks, :artwork_collection_id
  end
end
