class AddYearToPhones < ActiveRecord::Migration
  def change
    add_column :phones, :year, :integer
  end
end
