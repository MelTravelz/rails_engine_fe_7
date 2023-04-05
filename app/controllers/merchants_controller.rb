class MerchantsController < ApplicationController

  def index
    tea_shop_facade = TeaShopFacade.new
    @all_merchants = tea_shop_facade.get_all_merchants
  end

  def show
    
  end
end