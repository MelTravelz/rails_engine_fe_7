class MerchantsController < ApplicationController

  def index
    @all_merchants = tea_shop_facade.get_all_merchants
  end

  def show
    @merchant = merchants.find { |merchant| merchant.merchant_id == params[:merchant_id].to_i}
    # @merch_and_items = tea_shop_facade.get_merch_and_items
    @merch_items = tea_shop_facade.get_merch_items(params[:merchant_id])
  end

  private
  def tea_shop_facade
    @tea_shop_facade ||= TeaShopFacade.new
  end

  def merchants
    @merchants ||= tea_shop_facade.get_all_merchants
  end
end