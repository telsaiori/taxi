class CreateProfileForHighRails < ActiveRecord::Migration[5.0]
  def change
    create_table :profile_for_high_rails do |t|
      t.integer :profile_id
      t.integer :for_hr_id

      t.timestamps
    end
  end
end
