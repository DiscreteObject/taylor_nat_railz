class SessionsController < ApplicationController
	def create
		@user = User.find_by_username(params[:user][:username])
		if @user && params[:user][:password] == @user.password
			session[:current_user_id] = @user.id
			redirect_to user_path(@user.id)
		else
			flash[:notice] = "Username and password not found"
			redirect_to root_url
		end
	end

	def destroy
		session.clear
		redirect_to root_url
	end
end