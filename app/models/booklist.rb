class Booklist < ActiveRecord::Base

  has_many :booklist_books
  has_many :books, through: :booklist_books


end
