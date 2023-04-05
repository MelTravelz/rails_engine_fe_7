require 'rails_helper'

RSpec.describe "/merchants", type: :feature do
  describe "as a visitor, when I visit merchants index page" do 
    before(:each) do
      @tea_shop1 = TeaShop.new(attributes: { name: "Celestial Seasonings" }) 
      visit "/merchants"
    end

    it "I see all merchants names as links" do 
      expect(page).to have_content("All Tea Shops:")

      # Should I stub this information so it will not fail if the database changes?
      expect(page).to have_link("Schroeder-Jerde")
      expect(page).to have_link("Klein, Rempel and Jones")
      expect(page).to have_link("Willms and Sons")
    end

    it "I click a merchant name link & am redirected to their show page" do
      click_link("Schroeder-Jerde")
      expect(current_path).to eq("/merchants/1")
    end
  end
end