require_relative 'spec_helper'
require_relative '../lib/location_maker.rb'

describe LocationMaker do 
  before(:each) do 
    LocationMaker.add_location_to_array("Disney World", 28.385233, -81.563874)
    LocationMaker.add_location_to_array("The Flatiron School", 40.705329, -74.013970)
  end

  after(:each) do 
    LocationMaker.class_variable_set(:@@google_maps_array, [])
  end

  describe "#add_location_to_array" do 
    it "takes in three arguments, the name of a location, the latitude and the longitutde of that location "do 
      expect{LocationMaker.add_location_to_array("Disney World", 28.385233, -81.563874)}.to_not raise_error
    end

    it "successfully adds the new location, as an array, to the @@google_maps_array class variable" do 
      expect(LocationMaker.class_variable_get(:@@google_maps_array)).to match_array([["Disney World", 28.385233, -81.563874], ["The Flatiron School", 40.705329, -74.013970]])
    end
  end

  describe "#map_locations" do 
    it "returns the contents of the google map array constant" do 
      expect(LocationMaker.map_locations).to match_array([["Disney World", 28.385233, -81.563874], ["The Flatiron School", 40.705329, -74.013970]])
    end
  end
end