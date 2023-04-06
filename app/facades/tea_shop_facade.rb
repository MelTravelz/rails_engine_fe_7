class TeaShopFacade
  attr_reader :tea_shop_service

  def initialize
    # if params[:merchant_id].present? 
    #   @id = params[:merchant_id].to_i
    # end
    @tea_shop_service = TeaShopService.new
  end

  # def tea_shop_service
  #   @tea_shop_service ||= TeaShopService.new
  # end

  def get_all_merchants
    search_results = tea_shop_service.find_all_merchants
    # there are 100 merchants... if I only wanted to return to 20 here: .first(20).map
    all_merchants = search_results[:data].map do |merchant|
      merch_hash = { merchant_id: merchant[:id], merchant_name: merchant[:attributes][:name] } 
      Merchant.new(merch_hash)
    end
  end

  def get_merch_items(merch_id)
    items_info = tea_shop_service.find_merch_items(merch_id)
    items_info[:data].map do |item|
      item_hash = { id: item[:id], name: item[:attributes][:name], description: item[:attributes][:description], unit_price: item[:attributes][:unit_price] }
      Item.new(item_hash)
    end
  end

  # def get_merch_and_items
  #   tea_shop_info = {
  #     merchant: find_merchant,
  #     items: find_merch_items
  #   }
  #  TeaShop.new(tea_shop_info)
  # end

  # private 
  #Helper Methods: 
  # def find_merchant
  #   merchant = tea_shop_service.get_one_merchant(id)
  #   { merchant_id: merchant[:data][:id].to_i, merchant_name: merchant[:data][:attributes][:name] }
  # end
end