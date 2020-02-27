class ChangeUniqueness < ActiveRecord::Migration[5.2]
  def change
    change_column :artworks, :title, :string, unique: false
  end
end
