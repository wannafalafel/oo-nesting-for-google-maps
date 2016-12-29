require 'pry'


class LocationMaker


  @@google_maps_array = []

  def self.add_location_to_array(name, latitude, longitude)
        new_location = []
        new_location[0] = name
        new_location[1] = latitude
        new_location[2] = longitude
        @@google_maps_array << new_location
  end


  def self.map_locations
    @@google_maps_array
  end


end
