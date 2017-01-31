 class Hotel
  @@all=[]
   attr_accessor :hotel_name,:city,:hotel_rating,:hotel_describe,:hotel_booking
#-----------------------------------------------------------------
   def initialize(hotel_name,city,hotel_rating,hotel_describe,hotel_booking)
    @hotel_name=hotel_name
    @hotel_rating=hotel_rating
    @hotel_describe=hotel_describe
    @hotel_booking=hotel_booking
    self.city=city
    city.hotels << self
     @@all << self
  end
#-----------------------------------------------------------------
 def self.clear_all
  @@all.clear
 end
  def  self.find(id)
    @@all[id]
  end

  def self.hotel_info(id)
    hotel=self.find(id)
    puts ""
    puts "+-------------------------------------------------------------------------+".red
    puts "  #{hotel.hotel_name}\t".blue + "#{hotel.hotel_rating}\t".yellow + "#{hotel.hotel_booking}".green
    puts "  #{hotel.hotel_describe}"
    puts "+-------------------------------------------------------------------------+".red
    puts ""
  end
#-----------------------------------------------------------------
def self.find_by_city_name(city)
  @@all.select{|h| h.city.name == city || h.city.name == "Baghdād"}.map{|h| h.hotel_name}
end
end