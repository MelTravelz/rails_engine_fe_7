class Item
  attr_reader :item_id, 
              :item_name, 
              :item_desc, 
              :item_price

  def initialize(info)
    @item_id = info[:id]
    @item_name = info[:name]
    @item_desc = info[:description]
    @item_price = info[:unit_price]
  end
end