require 'rails_helper'

RSpec.describe TeaShopFacade do
  describe "instance methods" do
    
    context "#tea_shop_service" do
      it "resturns an instance of a service object" do
        tea_shop_facade = TeaShopFacade.new
        expect( tea_shop_facade.tea_shop_service).to be_a(TeaShopService)
      end
    end

    context "#get_all_merchants" do
      it "returns an array of merchant objects" do
        tea_shop = TeaShopFacade.new

        expect(tea_shop.get_all_merchants).to be_an(Array)
        expect(tea_shop.get_all_merchants.first).to be_a(TeaShop)
      end
    end
  end
end