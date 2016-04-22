###############MANHATTAN p1 scraper


require 'nokogiri'
require 'open-uri'

array = ["http://quartersnacks.com/spots/midtown-manhattan/gramercy-murray-hill/20th-and-c/", "http://quartersnacks.com/spots/downtown-manhattan/chinatown-east-village-l-e-s/chinatown-double-set/", "http://quartersnacks.com/spots/downtown-manhattan/chinatown-east-village-l-e-s/chinatown-manual-pad/", "http://quartersnacks.com/spots/downtown-manhattan/chinatown-east-village-l-e-s/delancey-curb/", "http://quartersnacks.com/spots/downtown-manhattan/chinatown-east-village-l-e-s/jacob-riis-projects/", "http://quartersnacks.com/spots/downtown-manhattan/chinatown-east-village-l-e-s/popeyes-ledge/", "http://quartersnacks.com/spots/downtown-manhattan/chinatown-east-village-l-e-s/seward-park-gap/", "http://quartersnacks.com/spots/downtown-manhattan/financial-district/rector-street-gap-to-bench/", "http://quartersnacks.com/spots/downtown-manhattan/financial-district/wall-street-gap/", "http://quartersnacks.com/spots/downtown-manhattan/tribeca-west-village/bond-street-gap/", "http://quartersnacks.com/spots/downtown-manhattan/tribeca-west-village/canal-fountain/", "http://quartersnacks.com/spots/downtown-manhattan/tribeca-west-village/strip-club-ledge/", "http://quartersnacks.com/spots/midtown-manhattan/chelsea-hells-kitchen-midtown-west/29th-street-gap/", "http://quartersnacks.com/spots/midtown-manhattan/gramercy-murray-hill/crackhead-park/", "http://quartersnacks.com/spots/midtown-manhattan/gramercy-murray-hill/terminator-rail/", "http://quartersnacks.com/spots/midtown-manhattan/chelsea-hells-kitchen-midtown-west/up-rails/", "http://quartersnacks.com/spots/uptown-manhattan/upper-east-side/wollman-rink/", "http://quartersnacks.com/spots/uptown-manhattan/harlem-morningside/125th-street-banks/", "http://quartersnacks.com/spots/uptown-manhattan/harlem-morningside/amsterdam-rail/", "http://quartersnacks.com/spots/uptown-manhattan/harlem-morningside/t-f-north/", "http://quartersnacks.com/spots/uptown-manhattan/washington-heights-the-bronx/supa-bump/", "http://quartersnacks.com/spots/uptown-manhattan/upper-west-side/yellow-rail/"]

for i in 0..array.length-1 do 
  manhattan = Nokogiri::HTML(open(array[i]))
  borough = "Manhattan"
  spot_name = manhattan.at_css("h2 a").content
  # puts spot_name.to_s
  description = manhattan.css(".entry p")[1]
  if description
    puts description.content
  end
  
end

