class ChangeIsDefaultInFortravels < ActiveRecord::Migration[5.0]
  def change
    change_column :for_travels, :is_default, :boolean, default: false, null: false
    add_index :for_travels, [:is_default]
  end
end
