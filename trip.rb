require_relative 'locations'

class Trip
  attr_accessor(:destinations)

  def initialize
    @destinations = []
  end

  def add_trip(location)
      @destinations << Location.new(location)
    end

  def travel
    destinations.each_cons(2) do |destination|
      puts "You travelled from #{destination[0].name} to #{destination[1].name}."
    end
  end
end

my_trip = Trip.new

Location.create("mexico", my_trip)
Location.create("Canada", my_trip)
Location.create("New York", my_trip)

puts my_trip.travel
