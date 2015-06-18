class Bookclub < ActiveRecord::Base

  def self.marks_list
    Booklist.find_by(name: "Mark's List")
  end

end
