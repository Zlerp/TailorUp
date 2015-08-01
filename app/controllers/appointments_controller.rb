class AppointmentsController < ApplicationController

  before_action :set_appointment, only: [:show, :edit, :update, :destroy]
  before_action :set_tailor, only: [:create]

    def index
      @appointments = Appointments.all
    end

    def new
      @appointment = Appointment.new
    end

    def create
      @appointment = @tailor.appointments.new(appointment_params)
    end
    def update
    end

    def destroy
    end

    private

    def set_appointment
      @appointment = Appointment.find(params[:id])
    end

    def set_tailor
      @tailor = Tailor.find(params[:tailor_id])
    end

    def appointment_params
      params.require(:appointment).permit(:tailor_id, :stages, :adress, :appointment_time, :due_time, :service )
    end
end
