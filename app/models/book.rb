class Book < ActiveRecord::Base

  has_many :booklist_books
  has_many :booklists, through: :booklist_books
end
