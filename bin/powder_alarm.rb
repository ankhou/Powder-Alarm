require 'nokogiri'
require 'open-uri'

doc = Nokogiri::XML(open('http://www.revelstokemountainresort.com/conditions/xml'))

new_snow_node = doc.css('new-snow value')

new_snow_value = new_snow_node.inner_html

puts new_snow_value

new_snow_integer = new_snow_value.to_i

puts new_snow_integer

if new_snow_integer >= 10
	snow_status = "Woop woop! Up and at 'em! Powder Alarm!\n"
else
	snow_status = "Nothing to see here. Another terrible snow day at RMR.\n"
end

print snow_status

time1 = Time.now
puts time1