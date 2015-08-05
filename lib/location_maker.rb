class LocationMaker

  GOOGLE_MAP_LOCATIONS = []

  def self.add_location_to_array(name, latitude, longitude)
    new_location = []
    new_location[0] = name
    new_location[1] = latitude
    new_location[2] = longitude
    GOOGLE_MAP_LOCATIONS << new_location
  end
  
  def self.map_locations 
    GOOGLE_MAP_LOCATIONS
  end

end