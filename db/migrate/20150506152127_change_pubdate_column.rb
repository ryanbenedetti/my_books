class ChangePubdateColumn < ActiveRecord::Migration

 def up
  	Book.delete_all
    remove_column :books, :pub_date
    add_column :books, :pub_year, :integer
  end

  def down
  	Book.delete_all
  	remove_column :books, :pub_year
    add_column :books, :pub_date, :date
  end

end
