class Player < ApplicationRecord
  belongs_to :users, :optional => true
end
