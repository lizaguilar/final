require 'nokogiri'
require 'open-uri'

  Spot.destroy_all

############ MANHATTAN// Crackhead Park//Seaport Scrape/Courthouse Drop

array = [ "http://quartersnacks.com/spots/midtown-manhattan/gramercy-murray-hill/crackhead-park/", "http://quartersnacks.com/spots/downtown-manhattan/financial-district/south-street-seaport/", "http://quartersnacks.com/spots/downtown-manhattan/city-hall-area/courthouse-drop/"]

for i in 0..array.length-1 do 
  manhattan = Nokogiri::HTML(open(array[i]))
  borough = "Manhattan"
  spot_name = manhattan.at_css("h2 a").content
  # puts spot_name.to_s
  description = manhattan.css(".entry p")[1]
  if description
    puts description.content
  end
  
  Spot.create(name: spot_name, description: description, borough: "Manhattan")
end


###################alligatorledge p2 scrape//Manhattan

array = ["http://quartersnacks.com/spots/downtown-manhattan/chinatown-east-village-l-e-s/alligator-ledge/"]

for i in 0..array.length-1 do 
  manhattan_four = Nokogiri::HTML(open(array[i]))
  borough = "Manhattan"
  spot_name = manhattan_four.at_css("h2 a").content
  # puts spot_name
  description = manhattan_four.css(".entry p")[2]
  if description
    puts description.con›tent
  end
  
  Spot.create(name: spot_name, description: description, borough: "Manhattan")

end

###################p3scrape//Manhattan// BLACK HUBBA

array = [ "http://quartersnacks.com/spots/downtown-manhattan/city-hall-area/black-hubba/"]

for i in 0..array.length-1 do
  manhattan_two = Nokogiri::HTML(open(array[i]))
  borough = "Manhattan"
  spot_name = manhattan_two.at_css("h2 a").content
  # puts spot_name
  description = manhattan_two.css(".entry p")[3]
  if description
    puts description.content
  end

  Spot.create(name: spot_name, description: description, borough: "Manhattan")

end

##############p4 scrape//Manhattan//TOMPKINS

array = ["http://quartersnacks.com/spots/downtown-manhattan/chinatown-east-village-l-e-s/tompkins-square-park/"]

for i in 0..array.length-1 do
  manhattan_three = Nokogiri::HTML(open(array[i]))
  borough = "Manhattan"
  spot_name = manhattan_three.at_css("h2 a").content
  # puts spot_name
  description = manhattan_three.css(".entry p")[4]
  if description
    puts description.content
  end

  Spot.create(name: spot_name, description: description, borough: "Manhattan")

end

######################BROOKLYN SPOTS

################################P1 Scrape//P1

array = ["http://quartersnacks.com/spots/brooklyn/downtown-fort-greene/bam-2/", "http://quartersnacks.com/spots/brooklyn/bushwick-greenpoint-williamsburg/blue-park/", "http://quartersnacks.com/spots/brooklyn/downtown-fort-greene/fish-gap/", "http://quartersnacks.com/spots/brooklyn/bushwick-greenpoint-williamsburg/reggaeton-ledges/", "http://quartersnacks.com/spots/brooklyn/other/thomas-greene-park/"]

  for i in 0..array.length-1 do
    brooklyn = Nokogiri::HTML(open(array[i]))
    borough = "Brooklyn"
    spot_name = brooklyn.at_css("h2 a").content
    # puts spot_name
    description = brooklyn.css(".entry p")[1]
    if description
      puts description.content
    end

    Spot.create(name: spot_name, description: description, borough: "Brooklyn")
    end

############p4 scrape//BK

array = ["http://quartersnacks.com/spots/brooklyn/bushwick-greenpoint-williamsburg/hasidic-gap/"]

for i in 0..array.length-1 do
  brooklyn_two = Nokogiri::HTML(open(array[i]))
  borough = "Brooklyn"
  spot_name = brooklyn_two.at_css("h2 a").content

  description = brooklyn_two.css(".entry p")[4]
  if description
    puts description.content
  end

Spot.create(name: spot_name, description: description, borough: "Brooklyn")

end


#############QUEENS SPOTS

array = ["http://quartersnacks.com/spots/queens/corona-elmhurst-rego-park/broadway-park/"]

for i in 0..array.length-1 do 
  queens = Nokogiri::HTML(open(array[i]))
  borough = "Queens"
  spot_name = queens.at_css("h2 a").content
  description = queens.css(".entry p")[1]
  if description
    puts description.content
  end
  Spot.create(name: spot_name, description: description, borough: "Queens")
end

# #######p4 scrape//Queens
array = ["http://quartersnacks.com/spots/queens/long-island-city-astoria/con-edison-banks/"]

for i in 0..array.length-1 do 
  queens = Nokogiri::HTML(open(array[i]))
  borough = "Queens"
  spot_name = queens.at_css("h2 a").content
  description = queens.css(".entry p")[4]
  if description
    puts description.content
  end
  Spot.create(name: spot_name, description: description, borough: "Queens")
end

# #######p2 scrape//Queens

array = ["http://quartersnacks.com/spots/queens/long-island-city-astoria/vernon-jackson/"]

for i in 0..array.length-1 do 
  queens = Nokogiri::HTML(open(array[i]))
  borough = "Queens"
  spot_name = queens.at_css("h2 a").content
  description = queens.css(".entry p")[2]
  if description
    puts description.content
  end

  Spot.create(name: spot_name, description: description, borough: "Queens")

end

#############p3//Queens
array = ["http://quartersnacks.com/spots/queens/corona-elmhurst-rego-park/flushing-meadows-park/"]

for i in 0..array.length-1 do 
queens = Nokogiri::HTML(open(array[i]))
  borough = "Queens"
  spot_name = queens.at_css("h2 a").content
  description = queens.css(".entry p")[3]
  if description
    puts description.content
  end
   Spot.create(name: spot_name, description: description, borough: "Queens")
end


#######BRONX

array = ["http://quartersnacks.com/spots/uptown-manhattan/washington-heights-the-bronx/bronx-courthouse/"]

for i in 0..array.length-1 do 
  bronx = Nokogiri::HTML(open(array[i]))
  borough = "Bronx"
  spot_name = bronx.at_css("h2 a").content
  description = bronx.css(".entry p")[1]
  if description
    puts description.content
  end

  Spot.create(name: spot_name, description: description, borough: "Bronx")

end



Spot.create(name: "2nd Nature Ramp", description: "Mini ramp located inside 2nd Nature skate shop", borough: "Westchester")

Spot.create(name: "Colombus Park", description: "Basketball court but doubles as smooth flatground", borough: "Westchester")

Spot.create(name: "Chatty", description: "Bank/ledge you can do tricks off of with two flat grass gaps", borough: "Westchester")


Spot.create(name: "Underground", description: "Manny pad/flatground located on the second floor of the White Plains library parking lot", borough: "Westchester")



Spot.create(name: "Mafia Ledges", description: "Cement ledge that goes over a grass patch", borough: "Westchester")

Spot.create(name: "Banana Ledges", description: "Yellow chunky ledges in the parking lot on Boston Post Rd", borough: "Westchester")

