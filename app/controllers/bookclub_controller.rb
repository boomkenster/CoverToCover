class BookclubController < ApplicationController
  respond_to :html, :json, :xml

  def index
    @marks_club = Booklist.marks_list.books

    respond_with @marks_club
  end

  def oprah
    @oprahs_club = Booklist.oprahs_list.books

    respond_with @oprahs_club
  end

  def steve
    @steves_club = Booklist.steves_list.books

    respond_with @steves_club  
  end

  def marc
    @marcs_club = Booklist.marcs_list.books  

    respond_with @marcs_club
  end
  
  def ben
    @bens_club = Booklist.bens_list.books  

    respond_with @bens_club
  end

  def larry
    @larrys_club = Booklist.larrys_list.books  

    respond_with @larrys_club
  end

  def jeff
    @jeffs_club = Booklist.jeffs_list.books  

    respond_with @jeffs_club
  end

  def peter
    @peters_club = Booklist.peters_list.books  

    respond_with @peters_club
  end

  def bill
    @bills_club = Booklist.bills_list.books  

    respond_with @bills_club
  end

  def nyt
    @nyt_list = Booklist.nyt_list
    @nyt_data = Nyt.lists
    
    respond_with @nyt_data
  end

end
