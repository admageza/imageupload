class Article < ApplicationRecord
  belongs_to :user
  belongs_to :user, :optional => true
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user
  has_many :comments, dependent: :destroy
  validates :text, presence: true, length:{ in: 1..140 }
end
