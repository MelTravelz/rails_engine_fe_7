require 'rails_helper'

RSpec.describe "/merchants/:id", type: :feature do
  describe "as a visitor, when I visit merchants show page" do 
    before(:each) do
      visit "/merchants/1"
    end

    it "I see a list of items that merchant sells" do 
      expect(page).to have_content("Schroeder-Jerde's Page")

      expect(page).to have_content("Item Nemo Facere")
      expect(page).to have_content("Item Expedita Aliquam")
      expect(page).to have_content("Item Provident At")
    end
  end
end