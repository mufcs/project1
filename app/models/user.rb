class User < ApplicationRecord
  has_many :club
  has_many :player
  has_and_belongs_to_many :reviews

  has_secure_password
  validates :email, :presence => true, :uniqueness => true
end
