class AddInsuranceToProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :insurance, :integer
  end
end
