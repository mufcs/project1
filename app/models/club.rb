class Club < ApplicationRecord
  belongs_to :user, :optional => true
  has_many :players
end
