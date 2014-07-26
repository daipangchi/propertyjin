class CreateUserPhonePictures < ActiveRecord::Migration
  def change
    create_table :user_phone_pictures do |t|
      t.integer :user_phone_id
      t.attachment :picture

      t.timestamps
    end
  end
end
