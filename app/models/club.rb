class Club < ApplicationRecord
  belongs_to :user, :optional => true
end
