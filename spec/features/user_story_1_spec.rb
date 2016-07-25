require 'rails_helper'

RSpec.describe FinderController, :type => :controller do
  describe "First user story" do
    it "finds gas stations" do

      #   As a user
      # When I visit "/"
      get :index
      # And I fill in the search form with 80203
      fill_in 'zip' with '80203'
      # And I click "Locate"
      # Then I should be on page "/search?zip=80203"
      # Then I should see a list of the 10 closest stations within 6 miles sorted by distance
      # And the stations should be limited to Electric and Propane
      
      # And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times

    end
  end
end
