class TailorsController < ApplicationController
  # attr_accessible :password, :password_confirmation
  before_action :set_tailor, only: [:show, :edit, :update, :destroy]

  before_action :configure_permitted_parameters, if: :devise_controller?
  # before_action :set_company, only [:create]

  def index
  end

  def new
    @tailor = current_user.tailor.build
  end


  def show
    @appointment = Appointment.new
  end

  def create
    @tailor = current_user.tailor.build(tailor_params[:id])
    # @tailor.company_id = current_user.id
    if @tailor.save
      redirect_to :back
    else
      puts 'WTF?'
    end
  end

  def update

  end

  protected
  def configure_permitted_parameters
   ## To permit attributes while registration i.e. sign up (app/views/devise/registrations/new.html.erb)
   devise_parameter_sanitizer.for(:sign_up) << :first_name << :last_name << :phone << :location << :company_id

   ## To permit attributes while editing a registration (app/views/devise/registrations/edit.html.erb)
    devise_parameter_sanitizer.for(:account_update) << :first_name << :last_name << :phone << :location

 end


  private



  def set_tailor
    @tailor = Tailor.find(params[:id])
  end

  def set_company
    @company = Comapny.find(params[:company_id])

  end

  def tailor_params
    params.require(:tailor).permit(:first_name, :last_name, :phone, :company_id)
  end

end
