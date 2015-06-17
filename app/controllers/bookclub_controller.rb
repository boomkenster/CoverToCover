class BookclubController < ApplicationController
  def index
    @marks_club = GoodreadsService.marks_list
  end

  def oprah
    @oprahs_list = GoodreadsService.oprahs_list
  end
end
