class Review < ApplicationRecord
  belongs_to :user, :optional => true
  # has_and_belongs_to_many :users
end
