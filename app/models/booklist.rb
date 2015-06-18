class Booklist < ActiveRecord::Base

  has_many :booklist_books
  has_many :books, through: :booklist_books

  def self.marks_list
    Booklist.find_by(name: "Mark's List")
  end

  def self.oprahs_list
    Booklist.find_by(name: "Oprah's Club")
  end

end
