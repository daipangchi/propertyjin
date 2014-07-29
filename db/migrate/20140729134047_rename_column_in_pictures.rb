class RenameColumnInPictures < ActiveRecord::Migration
  def change
    rename_column :pictures, :user_phone_id, :imageable_id
    add_column :pictures, :imageable_type, :string
  end
end
