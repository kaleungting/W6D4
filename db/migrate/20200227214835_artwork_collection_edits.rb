class ArtworkCollectionEdits < ActiveRecord::Migration[5.2]
  def change
    remove_column :artwork_collections, :artwork_id
    add_column :artworks, :artwork_collection_id, :integer, null: true
  end

end
