class MerchantsController < ApplicationController

  def index
    @all_merchants = tea_shop_facade.get_all_merchants
  end

  def show
    @merch_and_items = tea_shop_facade.get_merch_and_items
  end

  private
  def tea_shop_facade
    @tea_shop_facade ||= TeaShopFacade.new(params)
  end
end