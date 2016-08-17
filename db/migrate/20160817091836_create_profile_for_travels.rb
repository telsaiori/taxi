class CreateProfileForTravels < ActiveRecord::Migration[5.0]
  def change
    create_table :profile_for_travels do |t|
      t.integer :profile_id
      t.integer :for_travel_id

      t.timestamps
    end
  end
end
