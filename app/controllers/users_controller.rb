class UsersController < ApplicationController
	def index
		if session[:current_user_id]
			@user = User.find(session[:current_user_id])
		else
			@user = User.new
		end
	end

	def new
		@user = User.new
	end

	def create
		@user = User.create(params[:user])
		session[:current_user_id] = @user.id
		redirect_to user_path(@user.id)
	end

	def show
		@user = User.find(params[:id])
	end
end