class MerchantsController < ApplicationController

  def index
    tea_shop_facade = TeaShopFacade.new(params)
    @all_merchants = tea_shop_facade.get_all_merchants
  end

  def show
    tea_shop_facade = TeaShopFacade.new(params)
    @merch_and_items = tea_shop_facade.get_merch_and_items
  end
end