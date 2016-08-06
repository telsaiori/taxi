class AddCreditCardToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :credit_card_no, :integer
  end
end
