require 'rails_helper'

RSpec.describe "/merchants/:id", type: :feature do
  describe "as a visitor, when I visit merchants show page" do 
    before(:each) do
      visit "/merchants/1"
    end

    it "I see a list of items that merchant sells" do 
      expect(page).to have_content("Schroeder-Jerde's Page")
      expect(page).to have_content("All Items")

      expect(page).to have_content("Name: Item Nemo Facere")
      expect(page).to have_content("Price: $42.91")
      expect(page).to have_content("Description: Sunt eum id eius magni consequuntur delectus")

      # testing total number of items on page: 
      expect(page).to have_content("Name:", count: 15)
      # testing two more indv item names: 
      expect(page).to have_content("Name: Item Expedita Aliquam")
      expect(page).to have_content("Name: Item Provident At")
    end
  end
end