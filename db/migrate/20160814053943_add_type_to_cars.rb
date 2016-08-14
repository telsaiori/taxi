class AddTypeToCars < ActiveRecord::Migration[5.0]
  def change
    add_column :cars, :type, :string
  end
end
