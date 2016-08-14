class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :picture
      t.integer :car_age
      t.integer :capacity

      t.timestamps
    end
  end
end
