class City < ApplicationRecord
  has_many :activities
  belongs_to :user, :optional => true
end
