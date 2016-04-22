# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'nokogiri'
require 'open-uri'

  Spot.destroy_all

######### CRACKHEAD PARK #########
array = [ "http://quartersnacks.com/spots/midtown-manhattan/gramercy-murray-hill/crackhead-park/"]

for i in 0..array.length-1 do 
  manhattan = Nokogiri::HTML(open(array[i]))
  borough = "Manhattan"
  spot_name = manhattan.at_css("h2 a").content
  description = manhattan.css(".entry p")[1]
  if description
    puts description.content
  end
  image1 = "http://quartersnacks.com/wp-content/uploads/2010/05/crackhead1.jpg"
  image2 = "http://quartersnacks.com/wp-content/uploads/2010/05/crackhead2.jpg"
  image3 = "http://quartersnacks.com/wp-content/uploads/2010/05/crackhead3.jpg"
  image4 = "http://quartersnacks.com/wp-content/uploads/2010/05/crackhead5.jpg"
  location = "27th St & 2nd Ave"
  bust = "pig2.png"
  
  Spot.create(name: spot_name, description: description, borough: "Manhattan", image1: image1, image2: image2, image3: image3, image4: image4, location: location, bust: bust)
end

###ALLIGATOR LEDGE#######
array = ["http://quartersnacks.com/spots/downtown-manhattan/chinatown-east-village-l-e-s/alligator-ledge/"]

for i in 0..array.length-1 do 
  manhattan_four = Nokogiri::HTML(open(array[i]))
  borough = "Manhattan"
  spot_name = manhattan_four.at_css("h2 a").content
  # puts spot_name
  description = manhattan_four.css(".entry p")[2]
  if description
    puts description.content
  end
  image1 = "http://quartersnacks.com/wp-content/uploads/2010/05/P4220009.jpg"
  image2 = "http://quartersnacks.com/wp-content/uploads/2010/05/P4220010.jpg"
  image3 = "http://quartersnacks.com/wp-content/uploads/2010/05/P4220011.jpg"
  location = "Cherry St & the FDR Drive"
  bust = "pig2.png"
  
  Spot.create(name: spot_name, description: description, borough: "Manhattan", image1: image1, image2: image2, image3: image3, location: location, bust: bust)

end

#####SEAPORT#######

array = ["http://quartersnacks.com/spots/downtown-manhattan/financial-district/south-street-seaport/"]

for i in 0..array.length-1 do 
  manhattan = Nokogiri::HTML(open(array[i]))
  borough = "Manhattan"
  spot_name = manhattan.at_css("h2 a").content
  # puts spot_name.to_s
  description = manhattan.css(".entry p")[1]
  if description
    puts description.content
  end
  image1 = "http://quartersnacks.com/wp-content/uploads/2010/05/seaport4.jpg"
  image2 = "http://quartersnacks.com/wp-content/uploads/2010/05/seaport3.jpg"
  image3 = "http://quartersnacks.com/wp-content/uploads/2010/05/seaport2.jpg"
  image4 = "http://quartersnacks.com/wp-content/uploads/2010/05/seaport1.jpg"
  location = "South St & Franklin St"
  bust = "3pigs.jpg"
  
  Spot.create(name: spot_name, description: description, borough: "Manhattan", image1: image1, image2:image2, image3: image3, image4: image4, location: location, bust: bust)
end

####BLACK HUBBA#######

array = ["http://quartersnacks.com/spots/downtown-manhattan/city-hall-area/black-hubba/"]

for i in 0..array.length-1 do 
  manhattan = Nokogiri::HTML(open(array[i]))
  borough = "Manhattan"
  spot_name = manhattan.at_css("h2 a").content
  # puts spot_name.to_s
  description = manhattan.css(".entry p")[3]
  if description
    puts description.content
  end
  image1 = "http://quartersnacks.com/wp-content/uploads/2010/05/blackhubba1.jpg"
  image2 = "http://quartersnacks.com/wp-content/uploads/2010/05/blackhubba2.jpg"
  image3 = "http://quartersnacks.com/wp-content/uploads/2010/05/blackhubba3.jpg"
  image4 = "http://quartersnacks.com/wp-content/uploads/2010/05/blackhubba4.jpg"
  location = "Lafayette St & Duane St"
  bust = "2pigs.jpg"

  
  Spot.create(name: spot_name, description: description, borough: "Manhattan", image1: image1, image2: image2, image3: image3, image4: image4, location: location, bust: bust)
end

######COURTHOUSE DROP########

array = ["http://quartersnacks.com/spots/downtown-manhattan/city-hall-area/courthouse-drop/"]

for i in 0..array.length-1 do 
  manhattan = Nokogiri::HTML(open(array[i]))
  borough = "Manhattan"
  spot_name = manhattan.at_css("h2 a").content
  # puts spot_name.to_s
  description = manhattan.css(".entry p")[1]
  if description
    puts description.content
  end
  image1 = "http://quartersnacks.com/wp-content/uploads/2010/05/PB020004.jpg"
  image2 = "http://quartersnacks.com/wp-content/uploads/2010/05/PB020005.jpg"
  image3 = "http://quartersnacks.com/wp-content/uploads/2010/05/PB0200062.jpg"
  image4 = "http://quartersnacks.com/wp-content/uploads/2010/05/PB0200072.jpg"
  location = "Centre St & Worth St"
  bust = "5pigs.jpg"
  
  Spot.create(name: spot_name, description: description, borough: "Manhattan", image1: image1, image2: image2, image3: image3, image4: image4, location: location, bust: bust)
end

####TOMPKINS#####
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
  image1 = "http://quartersnacks.com/wp-content/uploads/2010/05/tf1.jpg"
  image2 = "http://quartersnacks.com/wp-content/uploads/2010/05/tf2.jpg"
  image3 = "http://quartersnacks.com/images/spots/headliners/rob_gonyon_tompkins_square_park.png"
  image4 = "http://quartersnacks.com/wp-content/uploads/2013/09/web-tf-empty-500x331.jpg"
  location = "9th St & Avenue A"
  bust = "pig2.png"

  Spot.create(name: spot_name, description: description, borough: "Manhattan", image1: image1, image2: image2, image3: image3, image4: image4, location: location, bust: bust)

end

#####BROOKLYN########

#####BAM-2#########

array = ["http://quartersnacks.com/spots/brooklyn/downtown-fort-greene/bam-2/"]

  for i in 0..array.length-1 do
    brooklyn = Nokogiri::HTML(open(array[i]))
    borough = "Brooklyn"
    spot_name = brooklyn.at_css("h2 a").content
    # puts spot_name
    description = brooklyn.css(".entry p")[1]
    if description
      puts description.content
    end
    image1 = "http://quartersnacks.com/wp-content/uploads/2016/03/bam2-1.jpg"
    image2 = "http://quartersnacks.com/wp-content/uploads/2016/03/bam2-2.jpg"
    image3 = "http://quartersnacks.com/wp-content/uploads/2016/03/bam2-3.jpg"
    image4 = "http://quartersnacks.com/wp-content/uploads/2016/03/bam2-4.jpg"
    location = "Flatbush Ave & Tillary St"
    bust = "pig2.png"


    Spot.create(name: spot_name, description: description, borough: "Brooklyn", image1: image1, image2: image2, image3: image3, image4: image4, location: location, bust: bust)
    end

###BLUE PARK###
   array = ["http://quartersnacks.com/spots/brooklyn/bushwick-greenpoint-williamsburg/blue-park/"]

  for i in 0..array.length-1 do
    brooklyn = Nokogiri::HTML(open(array[i]))
    borough = "Brooklyn"
    spot_name = brooklyn.at_css("h2 a").content
    # puts spot_name
    description = brooklyn.css(".entry p")[1]
    if description
      puts description.content
    end
    image1 = "http://quartersnacks.com/wp-content/uploads/2016/03/bluepark1.jpg"
    image2 = "http://quartersnacks.com/wp-content/uploads/2016/03/bluepark2.jpg"
    image3 = "http://quartersnacks.com/wp-content/uploads/2016/03/bluepark3.jpg"
    location = "Manhattan Ave & Scholes St"
    bust = "pig2.png"

    Spot.create(name: spot_name, description: description, borough: "Brooklyn", image1: image1, image2: image2, image3: image3, location: location, bust: bust)
    end

    ####FISH GAP####

    array = ["http://quartersnacks.com/spots/brooklyn/downtown-fort-greene/fish-gap/"]

  for i in 0..array.length-1 do
    brooklyn = Nokogiri::HTML(open(array[i]))
    borough = "Brooklyn"
    spot_name = brooklyn.at_css("h2 a").content
    # puts spot_name
    description = brooklyn.css(".entry p")[1]
    if description
      puts description.content
    end
    image1 = "http://quartersnacks.com/wp-content/uploads/2010/05/P5120005.jpg"
    image2 = "http://quartersnacks.com/wp-content/uploads/2010/05/P5120006.jpg"
    image3 = "http://quartersnacks.com/wp-content/uploads/2010/05/P5120007.jpg"
    location = "Washington Ave between Park & Flushing"
    bust = "pig2.png"

    Spot.create(name: spot_name, description: description, borough: "Brooklyn", image1: image1, image2: image2, image3: image3, location: location, bust: bust)
    end

    ###RAEGGAETON LEDGES####

    array = ["http://quartersnacks.com/spots/brooklyn/bushwick-greenpoint-williamsburg/reggaeton-ledges/"]

  for i in 0..array.length-1 do
    brooklyn = Nokogiri::HTML(open(array[i]))
    borough = "Brooklyn"
    spot_name = brooklyn.at_css("h2 a").content
    # puts spot_name
    description = brooklyn.css(".entry p")[1]
    if description
      puts description.content
    end
    image1 = "http://quartersnacks.com/wp-content/uploads/2010/05/reggaeton1.jpg"
    image2 = "http://quartersnacks.com/wp-content/uploads/2010/05/reggaeton2.jpg"
    image3 = "http://quartersnacks.com/wp-content/uploads/2010/05/reggaeton4.jpg"
    image4 = "http://quartersnacks.com/wp-content/uploads/2010/05/reggaeton7.jpg"
    location = "Rodney St & S 5th"
    bust = "pig2.png"


    Spot.create(name: spot_name, description: description, borough: "Brooklyn", image1: image1, image2: image2, image3: image3, image4: image4, location: location, bust: bust)
    end


###THOMAS GREENE PARK####

 array = ["http://quartersnacks.com/spots/brooklyn/other/thomas-greene-park/"]

  for i in 0..array.length-1 do
    brooklyn = Nokogiri::HTML(open(array[i]))
    borough = "Brooklyn"
    spot_name = brooklyn.at_css("h2 a").content
    description = brooklyn.css(".entry p")[1]
    if description
      puts description.content
    end
    image1 = "http://quartersnacks.com/wp-content/uploads/2011/07/IMG_3495.jpg"
    image2 = "http://quartersnacks.com/wp-content/uploads/2011/07/IMG_3512.jpg"
    image3 = "http://quartersnacks.com/wp-content/uploads/2011/07/IMG_3513.jpg"
    image4 = "http://quartersnacks.com/wp-content/uploads/2011/07/thomasgreene-4.jpg"
    location = "3rd Ave & Degraw Street"
    bust = "pig2.png"

    Spot.create(name: spot_name, description: description, borough: "Brooklyn", image1: image1, image2: image2, image3: image3, image4: image4, location: location)
    end

######HASIDIC GAP#########

array = ["http://quartersnacks.com/spots/brooklyn/bushwick-greenpoint-williamsburg/hasidic-gap/"]

for i in 0..array.length-1 do
  brooklyn_two = Nokogiri::HTML(open(array[i]))
  borough = "Brooklyn"
  spot_name = brooklyn_two.at_css("h2 a").content

  description = brooklyn_two.css(".entry p")[4]
  if description
    puts description.content
  end
  image1 = "http://quartersnacks.com/wp-content/uploads/2016/01/zhu-willyb-500x333.jpg"
  image2 = "http://quartersnacks.com/wp-content/uploads/2016/03/hasidicgap1.jpg"
  image3 = "http://quartersnacks.com/wp-content/uploads/2016/03/hasidicgap2.jpg"
  image4 = "http://quartersnacks.com/wp-content/uploads/2016/03/hasidicgap3.jpg"
  location = "Bedfor Ave & Wallabout St"
  bust = "pig2.png"

Spot.create(name: spot_name, description: description, borough: "Brooklyn", image1: image1, image2: image2, image3: image3, image4: image4, location: location, bust: bust)
end


    ############# QUEENS
    ###broadway park#####
  array = ["http://quartersnacks.com/spots/queens/corona-elmhurst-rego-park/broadway-park/"]

for i in 0..array.length-1 do 
  queens = Nokogiri::HTML(open(array[i]))
  borough = "Queens"
  spot_name = queens.at_css("h2 a").content
  description = queens.css(".entry p")[1]
  if description
    puts description.content
  end
  image1 = "http://quartersnacks.com/wp-content/uploads/2010/05/P4150017.jpg"
  image2 = "http://quartersnacks.com/wp-content/uploads/2010/05/P4150019.jpg"
  image3 = "http://quartersnacks.com/wp-content/uploads/2010/05/P4150021.jpg"
  image4 = "http://quartersnacks.com/wp-content/uploads/2010/05/P4150023.jpg"
  location = "45th Ave & Broadway"
  bust = "pig2.png"

  Spot.create(name: spot_name, description: description, borough: "Queens", image1: image1, image2: image2, image3: image3, image4: image4, location: location, bust: bust)
end

# #######CON EDISON BANKS########
array = ["http://quartersnacks.com/spots/queens/long-island-city-astoria/con-edison-banks/"]

for i in 0..array.length-1 do 
  queens = Nokogiri::HTML(open(array[i]))
  borough = "Queens"
  spot_name = queens.at_css("h2 a").content
  description = queens.css(".entry p")[4]
  if description
    puts description.content
  end
  image1 = "http://quartersnacks.com/wp-content/uploads/2010/05/P4150011.jpg"
  image2 = "http://quartersnacks.com/wp-content/uploads/2010/05/P4150012.jpg"
  image3 = "http://quartersnacks.com/wp-content/uploads/2010/05/P4150013.jpg"
  image4 = "http://quartersnacks.com/wp-content/uploads/2010/05/P4150014.jpg"
  location = "20th Ave & 31st St"
  bust = "pig2.png"

  Spot.create(name: spot_name, description: description, borough: "Queens", image1: image1, image2: image2, image3: image3, image4: image4, location: location, bust: bust)
end

#######VERNON JACKSON#######

array = ["http://quartersnacks.com/spots/queens/long-island-city-astoria/vernon-jackson/"]

for i in 0..array.length-1 do 
  queens = Nokogiri::HTML(open(array[i]))
  borough = "Queens"
  spot_name = queens.at_css("h2 a").content
  description = queens.css(".entry p")[2]
  if description
    puts description.content
  end
  image1 = "http://quartersnacks.com/wp-content/uploads/2010/05/P4150085.jpg"
  image2 = "http://quartersnacks.com/wp-content/uploads/2010/05/P4150087.jpg"
  image3 = "http://quartersnacks.com/wp-content/uploads/2010/05/P4150089.jpg"
  image4 = "http://quartersnacks.com/wp-content/uploads/2010/05/P4150092.jpg"
  location = "48th Ave & Vernon Boulevard"
  bust = "pig2.png"

  Spot.create(name: spot_name, description: description, borough: "Queens", image1: image1, image2: image2, image3: image3, image4: image4, location: location, bust: bust)

end

####FLUSHING MEADOWS######

array = ["http://quartersnacks.com/spots/queens/corona-elmhurst-rego-park/flushing-meadows-park/"]

for i in 0..array.length-1 do 
queens = Nokogiri::HTML(open(array[i]))
  borough = "Queens"
  spot_name = queens.at_css("h2 a").content
  description = queens.css(".entry p")[3]
  if description
    puts description.content
  end
  image1 = "http://quartersnacks.com/wp-content/uploads/2010/05/fmp1.jpg"
  image2 = "http://quartersnacks.com/wp-content/uploads/2010/05/fmp2.jpg"
  image3 = "http://quartersnacks.com/wp-content/uploads/2010/05/fmp6.jpg"
  image4 = "http://quartersnacks.com/wp-content/uploads/2010/05/fmp11.jpg"
  location = "Corona Park at the Unisphere"
  bust = "pig2.png"

   Spot.create(name: spot_name, description: description, borough: "Queens", image1: image1, image2: image2, image3: image3, image4: image4, location: location, bust: bust)
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
  image1 = "http://quartersnacks.com/wp-content/uploads/2011/07/P6110012.jpg"
  image2 = "http://quartersnacks.com/wp-content/uploads/2011/07/P6110015.jpg"
  image3 = "http://quartersnacks.com/wp-content/uploads/2011/07/P6110017.jpg"
  image4 = "http://quartersnacks.com/wp-content/uploads/2011/07/P6110033.jpg"
  location = "161st St & Grand Concourse"
  bust = "2pigs.png"


  Spot.create(name: spot_name, description: description, borough: "Bronx", image1: image1, image2: image2, image3: image3, image4: image4, location: location, bust: bust)

end

####WESTCHESTER####

Spot.create(name: "2nd Nature Ramp", description: "Mini ramp located inside 2nd Nature skate shop", borough: "Westchester", location: "614 Mamaroneck Avenue, Mamaroneck", bust: "No cops")

Spot.create(name: "Colombus Park", description: "Basketball court but doubles as smooth flatground", borough: "Westchester", location: "Van Ranst Pl & Jefferson Avenue", bust: "pig2.png")

Spot.create(name: "Chatty", description: "Bank/ledge you can do tricks off of with two flat grass gaps", borough: "Westchester", location: "34 Chatsworth Avenue, Larchmont", bust: "pig2.png")


Spot.create(name: "Underground", description: "Manny pad/flatground located on the second floor of the White Plains library parking lot", borough: "Westchester", location: "100 Martine Ave, White Plains", bust: "3pigs.jpg")










