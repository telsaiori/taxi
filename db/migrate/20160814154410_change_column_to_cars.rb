class ChangeColumnToCars < ActiveRecord::Migration[5.0]
  def change
    change_column :cars, :is_default, :boolean, default: false, nill: false
  end
end
