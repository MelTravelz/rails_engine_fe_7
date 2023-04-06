require 'rails_helper'

RSpec.describe TeaShopFacade do
  describe "instance methods" do
      # subject(:facade) {described_class.new }

    # context "#tea_shop_service" do
    #   it "resturns an instance of a service object" do
    #     tea_shop = TeaShopFacade.new
    #     expect(tea_shop.tea_shop_service).to be_a(TeaShopService)
    #   end
    # end

    context "#get_all_merchants" do
      it "returns an array of merchant objects" do
        tea_shop = TeaShopFacade.new

        expect(tea_shop.get_all_merchants).to be_an(Array)
        expect(tea_shop.get_all_merchants.first).to be_a(Merchant)
      end
    end

    context "#get_merch_items" do
      it "returns an array of item objects" do
        tea_shop = TeaShopFacade.new

        expect(tea_shop.get_merch_items(1)).to be_an(Array)
        expect(tea_shop.get_merch_items(1).first).to be_an(Item)
      end
    end

    # context "#get_merch_and_items" do
    #   it "returns an array of merchant objects" do
    #     tea_shop = TeaShopFacade.new(merchant_id: 1)

    #     expect(tea_shop.get_merch_and_items).to be_an(TeaShop)
    #     expect(tea_shop.get_merch_and_items.merchant_id).to eq(1)
    #     expect(tea_shop.get_merch_and_items.merchant_name).to eq("Schroeder-Jerde")
    #     expect(tea_shop.get_merch_and_items.items.count).to eq(15)
    #   end
    # end
  end
end