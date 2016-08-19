class AddHalfDayToProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :half_day_time, :integer
    add_column :profiles, :half_day_price, :integer
    add_column :profiles, :over_work_time1, :time
    add_column :profiles, :over_work_time2, :time
    add_column :profiles, :over_work_price, :integer
  end
end
