class BookclubController < ApplicationController
  def index
    @marks_club = Booklist.marks_list.books
  end

  def oprah
    @oprahs_club = Booklist.oprahs_list.books
  end
end
