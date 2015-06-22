class Booklist < ActiveRecord::Base

  has_many :booklist_books
  has_many :books, through: :booklist_books

  def self.marks_list
    Booklist.find_by(name: "Mark's List")
  end

  def self.oprahs_list
    Booklist.find_by(name: "Oprah's Club")
  end

  def self.steves_list
    Booklist.find_by(name: "Steve Jobs")
  end

  def self.marcs_list
    Booklist.find_by(name: "Marc Add")
  end

  def self.bens_list
    Booklist.find_by(name: "Ben Horo")
  end

  def self.larrys_list
    Booklist.find_by(name: "Larry Page")
  end

  def self.jeffs_list
    Booklist.find_by(name: "Jeff Bezos")
  end

  def self.peters_list
    Booklist.find_by(name: "Peter Thiel")
  end

  def self.bills_list
    Booklist.find_by(name: "Bill Gates")
  end

  def self.nyt_list
    Nyt.images
  end
end
