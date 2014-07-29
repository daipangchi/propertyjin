class RenamePictures < ActiveRecord::Migration
  def change
    rename_table :user_phone_pictures, :pictures
  end
end
