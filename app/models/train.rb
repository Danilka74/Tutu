class Train < ApplicationRecord
  validates :number, presence: true
             
              # (можно было просто :station)
  belongs_to :current_station, class_name: 'Station', foreign_key: :current_station_id
end
