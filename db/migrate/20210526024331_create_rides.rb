class CreateRides < ActiveRecord::Migration[5.2]
  def change
    create_table :rides do |t|
      t.integer :passenger_id
      t.integer :driver_id
      t.decimal :price
      t.string :pick_up
      t.string :drop_off
    end
  end
end
