require "rails_helper"

RSpec.describe "Visitors" do
 
 it "can select a bookclub" do
   marks_club = Booklist.create(name: "Mark's List")
   marks_club.books.create(title: "Peace",
                           author: "Love",
                           description: "A good book",
                           image_url: "www.google.com",
                           rating: 4)
  visit root_path
  select("Mark Zuckerberg", :from => "dropdown1")
  expect(current_path).to_eq bookclub_index_path

  expect(page).to have_content("Mark Zuckerberg's Reading List")
  expect(page).to have_content("Peace")
  expect(page).to have_content("Love")
  expect(page).to have_content(4)
 end

 it "can select a view Steve's club" do
  marks_club = Booklist.create(name: "Steve Jobs")
  marks_club.books.create(title: "Masterpiece",
                           author: "Someone",
                           description: "A good book",
                           image_url: "www.google.com",
                           rating: 4)

  visit bookclub_steve_path
  expect(page).to have_content("Steve Jobs")  
  expect(page).to have_content("Masterpiece")  
  expect(page).to have_content("Someone")
  expect(page).to have_content(4)
 end

 it "can select a Ben's club" do
   bens_club = Booklist.create(name: "Ben Horo")
   bens_club.books.create(title: "Masterpiece",
                           author: "Someone",
                           description: "A good book",
                           image_url: "www.google.com",
                           rating: 4)

  visit bookclub_ben_path
  expect(page).to have_content("Ben Horowitz")
 end

 it "can select a Oprah's club" do
   oprahs_club = Booklist.create(name: "Oprah's Club")
   oprahs_club.books.create(title: "Masterpiece",
                           author: "Someone",
                           description: "A good book",
                           image_url: "www.google.com",
                           rating: 4)

  visit bookclub_oprah_path
  expect(page).to have_content("Masterpiece")
 end

 it "can select a marc's club" do
   marcs_club = Booklist.create(name: "Marc Add")
   marcs_club.books.create(title: "Markie",
                           author: "Mark",
                           description: "Excellent Novel",
                           image_url: "www.google.com",
                           rating: 3)

  visit bookclub_marc_path
  expect(page).to have_content("Markie")
 end

  it "can select a larry's club" do
   larrys_club = Booklist.create(name: "Larry Page")
   larrys_club.books.create(title: "Markie",
                           author: "Mark",
                           description: "Excellent Novel",
                           image_url: "www.google.com",
                           rating: 3)

  visit bookclub_larry_path
  expect(page).to have_content("Mark")
 end

  it "can select a Jeff's club" do
   jeffs_club = Booklist.create(name: "Jeff Bezos")
   jeffs_club.books.create(title: "Gone",
                           author: "Away",
                           description: "Not bad Novel",
                           image_url: "www.google.com",
                           rating: 2.5)

  visit bookclub_jeff_path
  expect(page).to have_content("Gone")
 end

  it "can select a Peter's club" do
   peters_club = Booklist.create(name: "Peter Thiel")
   peters_club.books.create(title: "Tech",
                           author: "Stuff",
                           description: "Not bad Novel",
                           image_url: "www.google.com",
                           rating: 3)

  visit bookclub_peter_path
  expect(page).to have_content("Tech")
 end

  it "can select a Bill's club" do
   bills_club = Booklist.create(name: "Bill Gates")
   bills_club.books.create(title: "Windows",
                           author: "Microsoft",
                           description: "PC",
                           image_url: "www.google.com",
                           rating: 4)

  visit bookclub_bill_path
  expect(page).to have_content("Microsoft")
 end

 

end