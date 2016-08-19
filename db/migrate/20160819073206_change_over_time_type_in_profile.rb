class ChangeOverTimeTypeInProfile < ActiveRecord::Migration[5.0]
  def change
    change_column :profiles, :over_work_time1, :string
    change_column :profiles, :over_work_time2, :string
  end
end
