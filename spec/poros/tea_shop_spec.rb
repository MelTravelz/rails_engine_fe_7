require 'rails_helper'

RSpec.describe TeaShop do
  let(:attributes) do
    tea_shop_list = {
      id: 55,
      attributes: { name: "Celestial Seasonings" }
    }
  end

  let(:tea_shop) { TeaShop.new(attributes)}

  it "exists & has attributes" do 
    expect(tea_shop).to be_a(TeaShop)
    expect(tea_shop.id).to eq(55)
    expect(tea_shop.name).to eq("Celestial Seasonings")
  end
end