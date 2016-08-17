class CreateForTravels < ActiveRecord::Migration[5.0]
  def change
    create_table :for_travels do |t|
      t.string :location
      t.boolean :is_default
      t.timestamps
    end
  end
end
