class AddFullDayTimeToProfiles < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :full_day_time, :integer
    add_column :profiles, :full_day_price, :integer
  end
end
