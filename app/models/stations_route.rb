class StationsRoute < ApplicationRecord
  belongs_to :station
  belongs_to :route
end