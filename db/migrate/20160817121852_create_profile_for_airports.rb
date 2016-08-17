class CreateProfileForAirports < ActiveRecord::Migration[5.0]
  def change
    create_table :profile_for_airports do |t|
      t.integer :profile_id
      t.integer :for_airport_id

      t.timestamps
    end
  end
end
