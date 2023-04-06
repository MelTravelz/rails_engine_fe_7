# require 'rails_helper'

# RSpec.describe TeaShop do

#   let(:attributes) do
#     tea_shop_list = { 
#       merchant: 
#       {
#         merchant_id: 55,
#         merchant_name: "Celestial Seasonings" 
#       },
#       items: [
#       { item_id: 22, item_name: "Chai Tea" }, 
#       { item_id: 33, item_name: "Earl Grey" },
#       { item_id: 44, item_name: "Peppermint" }
#       ]}
#   end

#   let(:tea_shop) { TeaShop.new(attributes)}

#   it "exists & has attributes" do 
#     expect(tea_shop).to be_a(TeaShop)
#     expect(tea_shop.merchant_id).to eq(55)
#     expect(tea_shop.merchant_name).to eq("Celestial Seasonings")

#     expect(tea_shop.items).to eq([{:item_id=>22, :item_name=>"Chai Tea"}, {:item_id=>33, :item_name=>"Earl Grey"}, {:item_id=>44, :item_name=>"Peppermint"}])

#     expect(tea_shop.items.first[:item_id]).to eq(22)
#     expect(tea_shop.items.first[:item_name]).to eq("Chai Tea")
#   end
# end