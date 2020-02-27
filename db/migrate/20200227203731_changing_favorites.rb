class ChangingFavorites < ActiveRecord::Migration[5.2]
  def change
    remove_column :artworks, :favorited_by
    remove_column :artwork_shares, :favorited_by
    add_column :artworks, :favorited, :boolean, null: true
    add_column :artwork_shares, :favorited, :boolean, null: true
  end
end
