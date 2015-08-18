# Creating Nested Arrays for Google Maps

## Objectives

1. Write a class whose responsibility is to manipulate data.
2. Practice writing class methods and working with class variables.

## Introduction

What is a web developer? At the most basic level, a web developer is someone who manipulates and sends data over the internet for others to view and consume. That might sound boring, until you think about all of the things that "sending data" really encompasses––music, videos, news articles, maps of restuarants, movie reviews, games, social status updates. All of it is just data. In order to deliver this information to users, we as developers must become adept at manipulating it. 

One common task you'll likely encounter as a developers is that of drawing a Google map and dropping pins for a series of locations. Google maps uses Javascript functions to draw maps onto web pages. We'll learn all about Javascript in a later unit. For now, think of a Javascript function like a Ruby method. In order to use the map function and drop a series of pins, we need to be able to deliver a nested array of locations to that function. In this lab, we'll be writing a class that has one job––make a nested array of locations. You could use such a class to produce location arrays to feed to google maps.

 

## Instructions

1. In `lib/location_maker.rb`, define a class, `LocationMaker`. 
2. The Location Maker class should have a class variable, `@@google_maps_array`, that points to an empty array. 
3. Write a class method, `add_location_to_array` that takes in three arguments, the name of a location, the latitude of that location and the longitude of that location. The method should create an array that contains those three elements and then add that array to the array stored in the `@@google_maps_array` class variable. You are building a nested array––an array whose index items are other arrays. 
4. Write a class method, `map_locations` that returns the `@@google_maps_array` variable. 

Here's an example of the desired behavior: 

```ruby
LocationMaker.add_location_to_array("The Flatiron School", 40.705329, -74.013970)
LocationMaker.add_location_to_array("Disney World", 28.385233, -81.563874)

LocationMaker.map_locations
 => [["The Flatiron School", 40.705329, -74.013970], ["Disney World", 28.385233, -81.563874]]
```


