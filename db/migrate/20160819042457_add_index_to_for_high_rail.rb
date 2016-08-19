class AddIndexToForHighRail < ActiveRecord::Migration[5.0]
  def change
    add_index :for_high_rails, [:is_default]
  end
end
