class AddIsDeafultToLanguages < ActiveRecord::Migration[5.0]
  def change
    add_column :languages, :is_default , :boolean , null: false, default: false
    change_column :equiments, :is_default, :boolean,default: false, null: false
    change_column :cars, :is_default, :boolean, default: false, null: false
  end
end
