require 'rails_helper'

RSpec.describe Api::V1::BooklistsController, type: :controller do
    it "can view data" do
      ken = Booklist.create(name: "Kenny")
      ken.books.create(title: "Masterpiece",
                           author: "Someone",
                           description: "A good book",
                           image_url: "www.google.com",
                           rating: 4)
      get 'index', {:my_param => '1234', :format => :json}
      expect(response).to have_http_status(:success)
    end

end
