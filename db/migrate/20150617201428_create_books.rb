class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :description
      t.string :image_url
      t.string :rating

      t.timestamps null: false
    end
  end
end
