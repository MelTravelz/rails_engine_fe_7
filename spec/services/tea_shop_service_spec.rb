require 'rails_helper'

RSpec.describe TeaShopService do
  describe "instance methods" do
      # subject(:service) { described_class.new }

    context "#fetch_api" do
      # it "returns a status of 200 for 'merchants'" do
      it "#get_all_merchants" do
        all_merch_request = TeaShopService.new.fetch_api("merchants")

        expect(all_merch_request).to be_a(Hash)
        expect(all_merch_request[:data]).to be_a(Array)

        expect(all_merch_request[:data].first.keys).to eq([:id, :type, :attributes])
        expect(all_merch_request[:data].first[:id]).to be_a(String)
        expect(all_merch_request[:data].first[:type]).to be_a(String)
        expect(all_merch_request[:data].first[:attributes]).to be_a(Hash)

        expect(all_merch_request[:data].first[:attributes].keys).to eq([:name])
        expect(all_merch_request[:data].first[:attributes][:name]).to be_a(String) 
      end
    end

    it "#get_one_merchant" do
      all_merch_request = TeaShopService.new.fetch_api("merchants/1")
      expect(all_merch_request).to be_a(Hash)
    end

    it "#get_merch_items" do
      all_merch_request = TeaShopService.new.fetch_api("merchants/1/items")
      expect(all_merch_request).to be_a(Hash)
    end
  end
end