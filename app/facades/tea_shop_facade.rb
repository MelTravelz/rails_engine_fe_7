class TeaShopFacade
  def tea_shop_service
    @tea_shop_service ||= TeaShopService.new
  end

  def get_all_merchants
    search_results = tea_shop_service.get_all_merchants
    search_results[:data].map do |merchant_hash|
      TeaShop.new(merchant_hash)
    end
  end
end