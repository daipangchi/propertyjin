class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.string :name
      t.string :network
      t.string :features
      t.string :weight
      t.string :size
      t.string :akkum
      t.boolean :limited
      t.text :notes
      t.string :photo_url

      t.timestamps
    end
  end
end
