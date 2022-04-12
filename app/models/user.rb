class User < ApplicationRecord
  validates :username, :email, :password, presence: true
  validates :username, :email, uniqueness: true
  validates :username, length: { in: 4..12 }
  validates :password, length: { in: 8..16 }

  has_many :posts
end
