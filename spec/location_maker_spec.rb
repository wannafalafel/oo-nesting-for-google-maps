require_relative 'spec_helper'
require_relative '../lib/location_maker.rb'

describe LocationMaker do 
  describe "#add_location_to_array" do 
    it "takes in three arguments, the name of a location, the latitude and the longitutde of that location "do 
      LocationMaker.add_location_to_array("The Flatiron School", 40.705329, -74.013970)
      expect(LocationMaker.map_locations).to include(["The Flatiron School", 40.705329, -74.013970])
    end
  end

  describe "#map_locations" do 
    it "returns the contents of the google map array constant" do 
      LocationMaker.add_location_to_array("The Flatiron School", 40.705329, -74.013970)
      expect(LocationMaker.map_locations).to include(["The Flatiron School", 40.705329, -74.013970])
    end
  end
end