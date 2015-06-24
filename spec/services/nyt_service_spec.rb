require 'rails_helper'

describe "NYT" do
  it 'return best seller by date' do
    VCR.use_cassette('nyt_service#best_seller') do
      service = NytService.new
      output = service.time_best_seller
      expect(output.count).to equal(4) 
      expect(output[:results][:lists].first[:list_name]).to eq("Combined Print and E-Book Fiction")
    end
  end  
end