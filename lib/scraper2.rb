require 'nokogiri'
require 'open-uri'

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
  
end