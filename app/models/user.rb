class User < ApplicationRecord
  belongs_to :club, :optional => true
  belongs_to :player, :optional => true
  has_secure_password
end
