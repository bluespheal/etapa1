class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.decimal :num_flight
      t.date :date
      t.string :depart
      t.string :from
      t.string :to
      t.string :duration
      t.decimal :cost
      t.decimal :passengers

      t.timestamps
    end

    create_table :users do |t|
    	t.string :name
      t.string :email
      t.boolean :admin

      t.timestamps
    end

    create_table :bookings do |t|
      t.decimal :num_booking
      t.decimal :total
      t.decimal :flight_id

      t.timestamps
    end

    create_table :user_bookings do |t|
      t.decimal :user_id
      t.decimal :book_id
    end

    create_table :user_flights do |t|
      t.decimal :user_id
      t.decimal :flight_id
    end


  end
end
