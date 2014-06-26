class CreateUsersPhones < ActiveRecord::Migration
  def change
    create_table :users_phones do |t|
      t.integer :user_id
      t.integer :phone_id
      t.integer :condition
      t.string :date
      t.string :imei
      t.string :sw
      t.string :menu_lang
      t.string :keyboard_lang
      t.string :made_in
      t.string :calls_time
      t.string :phone_type
      t.text :notes
      t.boolean :box
      t.boolean :box_imei
      t.string :charger
      t.boolean :sim
      t.boolean :usb
      t.boolean :cradle
      t.string :another_staff
      t.boolean :selling

      t.timestamps
    end
  end
end
