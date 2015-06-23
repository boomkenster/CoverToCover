class Api::V1::BooklistsController < ApplicationController
  respond_to :json, :xml

  def index
    respond_with Booklist.all_list_books
  end


end
