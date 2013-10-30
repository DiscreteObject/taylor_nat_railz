module SessionHelper
	def logged_in?
		session[:current_user_id]
	end
end