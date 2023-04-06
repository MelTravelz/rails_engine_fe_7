class TeaShop
  attr_reader :merchant_id, :merchant_name, :items

  def initialize(info)
    @merchant_id = info[:merchant][:merchant_id]
    @merchant_name = info[:merchant][:merchant_name]
    @items = info[:items]
  end
end