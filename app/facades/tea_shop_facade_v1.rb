# class TeaShopFacade
#     attr_reader :id

#   def initialize(params)
#     if params[:merchant_id].present? 
#       @id = params[:merchant_id].to_i
#     end
#   end

#   def tea_shop_service
#     @tea_shop_service ||= TeaShopService.new
#   end

#   def get_all_merchants
#     search_results = tea_shop_service.get_all_merchants
#     # there are 100 merchants... if I only wanted to return to 20 here: .first(20).map
#     all_merchants = search_results[:data].map do |merchant|
#       merch_hash = { merchant: { merchant_id: merchant[:id].to_i, merchant_name: merchant[:attributes][:name] } }
#       TeaShop.new(merch_hash)
#     end
#   end

#   def get_merch_and_items
#     tea_shop_info = {
#       merchant: find_merchant,
#       items: find_merch_items
#     }
#    TeaShop.new(tea_shop_info)
#   end

#   # private 
#   #Helper Methods: 
#   def find_merchant
#     merchant = tea_shop_service.get_one_merchant(id)
#     { merchant_id: merchant[:data][:id].to_i, merchant_name: merchant[:data][:attributes][:name] }
#   end
  
#   def find_merch_items
#     items_info = tea_shop_service.get_merch_items(id)
#     items_info[:data].map do |item|
#       { item_id: item[:id].to_i, item_name: item[:attributes][:name] }
#     end
#   end
# end