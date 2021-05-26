class Passenger < ActiveRecord::Base
  has_many :rides
  has_many :drivers, through: :rides

  def car_list
    cars_arr = self.drivers.map do |driver_instance|
        driver_instance.car
    end
    cars_arr.join(";")
  end

  def self.average_rating
    Passenger.all.average(:rating)
  end

  def self.worst_rated
    Passenger.all.min_by do |passenger_instance|
        passenger_instance.rating
    end
  end

  def self.worst_rating_in_existence
    worst_passenger = Passenger.all.min_by do |passenger_instance|
        passenger_instance.rating
    end
    worst_passenger.rating
  end
end