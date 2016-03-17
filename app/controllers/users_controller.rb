class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def index
		@users = User.all
	end

	def create
		@user = User.new
		@user.user_name = params[:user][:user_name]
		@user.password = params[:user][:password]
		@user.email = params[:user][:email]
		if @user.save
			# render :index
			flash[:success] = 'Record successfully created.'
			redirect_to users_path
		else
			flash[:error] = 'Record not saved!'
			redirect_to new
		end
	end
end
