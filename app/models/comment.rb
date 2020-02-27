# == Schema Information
#
# Table name: comments
#
#  id         :bigint           not null, primary key
#  user_id    :integer          not null
#  artwork_id :integer          not null
#  body       :string           not null
#
class Comment < ApplicationRecord

  validates :user_id, :artwork_id, :body, presence: true

  belongs_to :user,
    foreign_key: :user_id,
    class_name: :User,
    dependent: :destroy

  belongs_to :artwork,
    foreign_key: :artwork_id,
    class_name: :Artwork,
    dependent: :destroy

  has_many :likes,
  as: :likeable
end
