# == Schema Information
#
# Table name: artwork_collections
#
#  id      :bigint           not null, primary key
#  user_id :integer
#
class ArtworkCollection < ApplicationRecord

  validates :user_id, presence: true

  belongs_to :user,
  foreign_key: :user_id,
  class_name: :User

  has_many :artworks,
  foreign_key: :artwork_collection_id,
  class_name: :Artwork
  
end
