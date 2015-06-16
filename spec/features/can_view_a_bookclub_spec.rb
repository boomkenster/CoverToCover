require "rails_helper"

describe "Visitors" do
 it "can select a bookclub" do
  visit root_path
  select("Mark Zuckerberg", :from => "dropdown1")
  expect(current_path).to_eq bookclub_index_path
  expect(page).to have_content("Mark Zuckerberg's Reading List")
 end

 it "can view bookclub" do
  visit bookclub_index_path
  expect(page).to have_content("Mark Zuckerberg's Reading List") 
 end

 

end