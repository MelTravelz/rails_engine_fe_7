class Merchant
  attr_reader :merchant_id, :merchant_name

  def initialize(info)
    @merchant_id = info[:merchant_id]
    @merchant_name = info[:merchant_name]
  end
end