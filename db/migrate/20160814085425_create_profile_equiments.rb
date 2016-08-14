class CreateProfileEquiments < ActiveRecord::Migration[5.0]
  def change
    create_table :profile_equiments do |t|
      t.integer :profile_id
      t.integer :equiment_id

      t.timestamps
    end
  end
end
