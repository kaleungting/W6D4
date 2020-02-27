class CollectionName < ActiveRecord::Migration[5.2]
  def change
    add_column :artwork_collections, :collection_name, :string, null: false
    add_index :artwork_collections, :collection_name
  end

    
end
