class SessionsController < ApplicationController

	def create
		user = User.where(email: params[:login][:email]).first
		if user && user.authenticate(params[:login][:password])
			session[:user_id] = user.id.to_s
			redirect_to home_path
		else
			redirect_to login_path
		end
	end

	def destroy
		session.delete(:user_id)
		delete_current_user()
		redirect_to home_path
	end

end