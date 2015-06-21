require 'rails_helper'

RSpec.describe Booklist, type: :model do
  it "can access books" do
    ken = Booklist.create(name: "Kenny")
    expect(ken.books).to eq([])
  end
end
