class ChangeIsForTravelToString < ActiveRecord::Migration[5.0]
  def change
    change_column :profiles, :is_for_travel, :string
    change_column :profiles, :is_for_airport, :string
    change_column :profiles, :is_for_hr, :string
  end
end
