require 'nokogiri'
require 'open-uri'

array = ["http://quartersnacks.com/spots/downtown-manhattan/chinatown-east-village-l-e-s/columbus-park/","http://quartersnacks.com/spots/downtown-manhattan/chinatown-east-village-l-e-s/houston-park/", "http://quartersnacks.com/spots/downtown-manhattan/chinatown-east-village-l-e-s/pitt-pool/", "http://quartersnacks.com/spots/downtown-manhattan/city-hall-area/black-hubba/", "http://quartersnacks.com/spots/midtown-manhattan/midtown-east/queensboro-bridge-ledges/", "http://quartersnacks.com/spots/uptown-manhattan/harlem-morningside/green-three-block/", "http://quartersnacks.com/spots/uptown-manhattan/harlem-morningside/lenox-ledges/"]

for i in 0..array.length-1 do
  manhattan_two = Nokogiri::HTML(open(array[i]))
  borough = "Manhattan"
  spot_name = manhattan_two.at_css("h2 a").content
  # puts spot_name
  description = manhattan_two.css(".entry p")[3]
  if description
    puts description.content
  end
end