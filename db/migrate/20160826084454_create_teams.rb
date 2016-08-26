class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :image
      t.text :profile
      t.text :contact
      t.text :payment

      t.timestamps
    end
  end
end
