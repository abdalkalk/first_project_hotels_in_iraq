class Cline
  CITY=["baghdad","Erbil"]
def start
puts "+-----------------------------------+".yellow
puts "|   Welcome To Iraqi Hotels !!!     |".yellow
puts "+-----------------------------------+".yellow
puts""
puts "1) Baghdad".blue
puts "2) Erbil".blue
puts "3) Exit".blue
print "Enter your city number, please:".green
input = gets.strip.to_i
if input == 3
  exit
else
while input != 3
if input == 2
  Cline.hotel_list(input)
     start
elsif input == 1
  Cline.hotel_list(input)
    start
else
  start
end
end
end

end
def self.hotel_list(input)
 Scrap.start_nokogiri(CITY[input-1])
 Hotel.find_by_city_name(CITY[input-1]).each_with_index do |hotel , index|
 puts "#{index+1}) " + "#{hotel}".blue
   end
   print "\n\nPik a hotel number:".green
   pik_hotel = gets.strip.to_i
  if Cline.ckeck_input_piked(pik_hotel,input)
    Hotel.hotel_info(pik_hotel - 1)
  else
    puts "Wrong input please try again.".red
  end
end
def self.ckeck_input_piked(pik_hotel,input)
  pik_hotel.between?(0,Scrap.start_nokogiri(CITY[input-1]).size)
end
end
