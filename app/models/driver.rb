class Driver < ActiveRecord::Base
  has_many :rides
  has_many :passengers, through: :rides

  def accept_ride_request(passenger, price, pick_up, drop_off)
    Ride.create(driver_id: self.id, passenger_id: passenger.id, price: price, pick_up: pick_up, drop_off: drop_off)
  end

  def total_income
    self.rides.sum(:price)
  end

  def cancel_ride(passenger)
    cancelled_ride = Ride.find_by(passenger_id: passenger.id, driver_id: self.id)
    if cancelled_ride
        cancelled_ride.destroy
    end
  end

  def self.most_active_driver
    Driver.all.max_by do |driver_instance|
        driver_instance.rides.length
    end
  end

  def self.best_performing_driver
    Driver.all.max_by do |driver_instance|
        driver_instance.rating
    end
  end

end