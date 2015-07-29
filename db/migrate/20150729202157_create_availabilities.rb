class CreateAvailabilities < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
      t.datetime :start
      t.datetime :end
      t.boolean :booked

      t.timestamps null: false
    end
  end
end
