class AddFieldToBooks < ActiveRecord::Migration
  def change
    add_column :books, :my_pub_date, :date
  end
end
