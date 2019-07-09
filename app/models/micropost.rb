class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :content, presence: true, length: { maximum: 255 } 
  
# favorites
  has_many :users
  has_many :favorites, dependent: :destroy
  has_many :reverses_of_favorite, class_name: 'Favorite'
  has_many :likes, through: :reverses_of_favorite, source: :micropost
  
end
