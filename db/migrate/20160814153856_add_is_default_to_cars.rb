class AddIsDefaultToCars < ActiveRecord::Migration[5.0]
  def change
    add_column :cars, :is_default, :boolean
    add_column :cars, :position, :integer
    add_index :cars, [:is_default]
    add_index :cars, [:position]
  end
end
