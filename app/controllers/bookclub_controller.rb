class BookclubController < ApplicationController
  def index
    @marks_club = Booklist.marks_list.books
  end

  def oprah
    @oprahs_club = Booklist.oprahs_list.books
  end

  def steve
    @steves_club = Booklist.steves_list.books    
  end

  def marc
    @marcs_club = Booklist.marcs_list.books  
  end
  
  def ben
    @bens_club = Booklist.bens_list.books  
  end

  def larry
    @larrys_club = Booklist.larrys_list.books  
  end

  def jeff
    @jeffs_club = Booklist.jeffs_list.books  
  end

  def peter
    @peters_club = Booklist.peters_list.books  
  end

  def bill
    @bills_club = Booklist.bills_list.books  
  end

  def nyt
    @nyt_list = Booklist.nyt_list
  end

end
