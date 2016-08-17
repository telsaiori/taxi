class ChangeIsDefaultToForAirports < ActiveRecord::Migration[5.0]
  def change
    add_index :for_airports, [:is_default]
  end
end
