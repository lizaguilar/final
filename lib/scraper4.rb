require 'nokogiri'
require 'open-uri'

array = ["http://quartersnacks.com/spots/downtown-manhattan/chinatown-east-village-l-e-s/d7/", "http://quartersnacks.com/spots/downtown-manhattan/chinatown-east-village-l-e-s/tompkins-square-park/"]

for i in 0..array.length-1 do
  manhattan_three = Nokogiri::HTML(open(array[i]))
  borough = "Manhattan"
  spot_name = manhattan_three.at_css("h2 a").content
  # puts spot_name
  description = manhattan_three.css(".entry p")[4]
  if description
    puts description.content
  end
end