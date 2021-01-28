class Club < ApplicationRecord
  belongs_to :users, :optional => true
end
