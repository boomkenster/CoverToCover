require 'rails_helper'

describe "Goodreads" do
  it 'return best seller by date' do
    VCR.use_cassette('goodreads_service#book_title') do
      service = Goodreads.new
      output = service.book_by_title("Creativity, Inc.")
      expect(output.count).to eq(29) 
      expect(output.title).to eq("Creativity, Inc.: Overcoming the Unseen Forces That Stand in the Way of True Inspiration")
    end
  end  
end