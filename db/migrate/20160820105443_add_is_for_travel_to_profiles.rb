class AddIsForTravelToProfiles < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :is_for_travel, :boolean, default: false
    add_column :profiles, :is_for_airport, :boolean, default: false
    add_column :profiles, :is_for_hr, :boolean, default: false
  end
end
