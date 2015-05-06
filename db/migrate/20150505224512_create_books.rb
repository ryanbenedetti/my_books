class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :author
      t.string :title
      t.integer :pages
      t.string :publisher
      t.date :pub_date
      t.integer :isbn
      t.string :genre
      t.string :category

      t.timestamps
    end
  end
end
