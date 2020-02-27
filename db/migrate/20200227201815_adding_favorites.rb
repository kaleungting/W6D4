class AddingFavorites < ActiveRecord::Migration[5.2]
  def change
    add_column :artworks, :favorited_by, :integer, null: true
    add_column :artwork_shares, :favorited_by, :integer, null: true
  end
end
