class Location
  attr_accessor(:name)

  def initialize(name)
    @name = name
  end

  def self.create(name, stop_name)
    new_location = Location.new(name)
    stop_name.destinations << new_location
  end
  
end
