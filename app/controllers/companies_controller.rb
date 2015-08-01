class CompaniesController < ApplicationController

	def show
		@tailor = Tailor.new
		# @company = Company.all
		# @company.user_id = current_user.id
	end


	def index
		@companies = Company.all
	end

	def create
		@company = Company.new
	end



end
