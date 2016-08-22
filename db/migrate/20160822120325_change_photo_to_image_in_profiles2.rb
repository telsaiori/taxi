class ChangePhotoToImageInProfiles2 < ActiveRecord::Migration[5.0]
  def change
    change_column :profiles, :photo, :image
  end
end
