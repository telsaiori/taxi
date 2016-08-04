class AddNameToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :string
    add_column :users, :id_no, :string
    add_column :users, :address, :string
    add_column :users, :tel, :integer
  end
end
