class BookclubController < ApplicationController
  def index
    @marks_club = Bookclub.new.mark_zuckerberg
  end
end
