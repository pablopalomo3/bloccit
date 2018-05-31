require 'rails_helper'

RSpec.describe Advertisement, type: :model do
  let(:advertisement) { Advertisement.create!(title: "New Post Title", copy: "New Copy", price: 1234) }
  
  describe "attributes" do
     it "has title, copy and price attributes" do
       expect(advertisement).to have_attributes(title: "New Post Title", copy: "New Copy", price: 1234)
     end
   end
end
