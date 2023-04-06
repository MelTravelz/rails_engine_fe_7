require 'rails_helper'

RSpec.describe Item do

  let(:item1) { Item.new({ id: "50", name: "Chai Tea", description: "Very Yummy!", unit_price: 10.01})}

  it "exists & has attributes" do 
    expect(item1).to be_an(Item)
    expect(item1.item_id).to eq("50")
    expect(item1.item_name).to eq("Chai Tea")
    expect(item1.item_desc).to eq("Very Yummy!")
    expect(item1.item_price).to eq(10.01)
  end
end