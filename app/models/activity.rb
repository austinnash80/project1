class Activity < ApplicationRecord
  belongs_to :city, :optional => true
end
