class TailorsController < ApplicationController
  # attr_accessible :password, :password_confirmation


  def index
  end

  def new
    @tailor = Tailor.new
  end

  def show
  end


  def create
    @tailor = Tailor.new(params)
  end

  def update
  end

  def params
    params.require(:tailor).permit(:first_name, :last_name, :phone, :company_id)
  end

end
