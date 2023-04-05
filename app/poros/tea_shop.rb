class TeaShop
  attr_reader :name, :id

  def initialize(info_hash)
    @name = info_hash[:attributes][:name]
    @id = info_hash[:id]
  end
end