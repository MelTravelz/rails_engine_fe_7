class TeaShopFacade

  # def initialize
  # end

  def tea_shop_service
    @tea_shop_service ||= TeaShopService.new
  end

  def get_all_merchants
    search_results = tea_shop_service.get_all_merchants
    # there are 100 merchants... so I'm limiting the return to 20 here: .first(20).map
    search_results[:data].map do |merchant_hash|
      TeaShop.new(merchant_hash)
    end
  end
end