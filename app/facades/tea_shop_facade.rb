class TeaShopFacade
  def tea_shop_service
    @tea_shop_service ||= TeaShopService.new
  end

  def get_all_merchants

  end
end