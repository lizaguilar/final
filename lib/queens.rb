require 'nokogiri'
require 'open-uri'

array = ["http://quartersnacks.com/spots/queens/corona-elmhurst-rego-park/broadway-park/", "http://quartersnacks.com/spots/queens/corona-elmhurst-rego-park/long-island-expressway-hill/", "http://quartersnacks.com/spots/queens/other/rockaway-rails/"]

for i in 0..array.length-1 do 
  queens = Nokogiri::HTML(open(array[i]))
  borough = "Queens"
  spot_name = queens.at_css("h2 a").content
  description = queens.css(".entry p")[1]
  if description
    puts description.content
  end

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
  # Spot.create
end




