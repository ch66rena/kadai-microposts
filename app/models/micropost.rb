class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 255 }  

  has_many :reverses_of_likerelationship, class_name: 'Likerelationship', foreign_key: 'micropost_id'
  has_many :like_users, through: :reverses_of_likerelationship, source: :user
 
end
