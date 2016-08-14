class CreateEquiments < ActiveRecord::Migration[5.0]
  def change
    create_table :equiments do |t|
      t.string :name

      t.timestamps
    end
  end
end
