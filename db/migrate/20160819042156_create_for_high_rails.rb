class CreateForHighRails < ActiveRecord::Migration[5.0]
  def change
    create_table :for_high_rails do |t|
      t.string :location
      t.boolean :is_default, default: false, null: false
      t.timestamps
    end
  end
end
