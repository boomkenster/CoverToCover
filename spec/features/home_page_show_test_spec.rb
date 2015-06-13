require "rails_helper"

describe "Visitors" do
 it "can view homepage" do
  visit root_path
  expect(page).to have_content("SkimThrough")
 end
end