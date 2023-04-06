require 'rails_helper'

RSpec.describe Merchant do

  let(:merchant1) { Merchant.new({ merchant_id: "55", merchant_name: "Celestial Seasonings" })}

  it "exists & has attributes" do 
    expect(merchant1).to be_a(Merchant)
    expect(merchant1.merchant_id).to eq("55")
    expect(merchant1.merchant_name).to eq("Celestial Seasonings")
  end
end