class Ride < ActiveRecord::Base
  belongs_to :driver
  belongs_to :passenger

  def print_details
    "#{self.driver.first_name} drove #{self.passenger.first_name} for $#{self.price} from #{self.pick_up} to #{self.drop_off}"
  end
end