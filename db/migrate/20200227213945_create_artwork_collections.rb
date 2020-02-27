class CreateArtworkCollections < ActiveRecord::Migration[5.2]
  def change
    create_table :artwork_collections do |t|
      t.integer :artwork_id, null: true
      t.integer :user_id, null: true
    end
    
    add_index :artwork_collections, :artwork_id
    add_index :artwork_collections, :user_id
  end
end
