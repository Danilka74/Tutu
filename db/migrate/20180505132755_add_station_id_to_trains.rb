class AddStationIdToTrains < ActiveRecord::Migration[5.1]
  def change
    # add_column :trains, :station_id, :integer

                    #куда                  что 
    add_belongs_to :trains , :current_station          # :station   поезда будут принадлежать станциям
  end
end
