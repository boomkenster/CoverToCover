require "rails_helper"

RSpec.describe "Visitors" do

 before :each do
   @bens_club = Booklist.create(name: "Kenny")
   @bens_club.books.create(title: "Masterpiece")
 end
 
 it "can select a bookclub" do
  visit root_path
  select("Mark Zuckerberg", :from => "droptit")
  expect(current_path).to_eq bookclub_index_path
  expect(page).to have_content("Mark Zuckerberg's Reading List")
 end

 it "can select a view Steve's club" do
  visit bookclub_steve_path
  expect(page).to have_content("Steve Jobs")
 end

 it "can select a Ben's club" do
  visit bookclub_ben_path
  expect(page).to have_content("Ben Horowitz")
 end

 

end