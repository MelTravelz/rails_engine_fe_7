require 'rails_helper'

RSpec.describe "/merchants/:id", type: :feature do
  describe "as a visitor, when I visit merchants show page" do 
    before(:each) do
      visit "/merchants/1"
    end

    it "I see all merchants names as links" do 
      expect(page).to have_content("Schroeder-Jerde's Page")

      # expect(page).to have_content()
    end
  end
end