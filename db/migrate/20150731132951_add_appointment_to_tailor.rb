class AddAppointmentToTailor < ActiveRecord::Migration
  def change
    add_reference :tailors, :appointment, index: true, foreign_key: true
  end
end
