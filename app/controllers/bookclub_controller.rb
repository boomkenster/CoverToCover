class BookclubController < ApplicationController
  def index
    @marks_club = Booklist.marks_list.books
  end

  def oprah
    @oprahs_list = GoodreadsService.oprahs_list
  end
end
