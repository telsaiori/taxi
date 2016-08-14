class CreateProfileCars < ActiveRecord::Migration[5.0]
  def change
    create_table :profile_cars do |t|
      t.integer :car_id
      t.integer :profile_id

      t.timestamps
    end
  end
end
