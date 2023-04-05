class TeaShop
  attr_reader :name

  def initialize(info_hash)
    @name = info_hash[:attributes][:name]
  end
end