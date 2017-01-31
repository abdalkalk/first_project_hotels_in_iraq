class City
  attr_accessor :name , :hotels
  @@all=[]
#-----------------------------------------------------------------
  def initialize(name)

    @name=name
    @hotels=[]
    @@all << self
    #puts "here City OBJ= #{@name}"
  end
def self.clear_all
  @@all.clear
end
#-----------------------------------------------------------------
end