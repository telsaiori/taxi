class ChangeIsForTravelToBoolean < ActiveRecord::Migration[5.0]
  def change
    change_column :profiles, :is_for_travel, :boolean
    change_column :profiles, :is_for_airport, :boolean
    change_column :profiles, :is_for_hr, :boolean
  end
end
