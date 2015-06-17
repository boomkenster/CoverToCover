class CreateBooklistBooks < ActiveRecord::Migration
  def change
    create_table :booklist_books do |t|
      t.references :booklist, index: true, foreign_key: true
      t.references :book, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
