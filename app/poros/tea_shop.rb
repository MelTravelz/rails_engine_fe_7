class TeaShop
  attr_reader :merchant_name, :merchant_id

  def initialize(info_hash)
    @merchant_name = info_hash[:attributes][:name]
    @merchant_id = info_hash[:id]
  end
end