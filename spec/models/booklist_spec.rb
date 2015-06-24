require 'rails_helper'

RSpec.describe Booklist, type: :model do
  it "can access books" do
    ken = Booklist.create(name: "Kenny")
    expect(ken.books).to eq([])
  end

  it "can get books from a list" do
   oprahs_club = Booklist.create(name: "Oprah's Club")
   oprahs_club.books.create(title: "Masterpiece",
                           author: "Someone",
                           description: "A good book",
                           image_url: "www.google.com",
                           rating: 4)
   oprah = Booklist.oprahs_list
   expect(oprah.books.first.author).to eq("Someone")
  end 
end
