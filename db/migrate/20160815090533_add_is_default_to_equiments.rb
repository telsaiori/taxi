class AddIsDefaultToEquiments < ActiveRecord::Migration[5.0]
  def change
    add_column :equiments, :is_default, :boolean, default: false, nill: false
    add_index :equiments, [:is_default]
  end
end
