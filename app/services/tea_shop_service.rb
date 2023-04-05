class TeaShopService 
  def fetch_api(url)
    response = connection.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def get_all_merchants
    fetch_api("merchants")
  end

  private
  def connection
    Faraday.new(url: "http://localhost:3000/api/v1/")
  end
end