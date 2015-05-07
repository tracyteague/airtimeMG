class UserController < ApplicationController
	def index

	end

	def create
	  @user = User.new(user_params)
	  if @user.save
	    session[:user_id] = @user.id
	    redirect_to '/'
	  else
	    redirect to '/'
	  end
	end

	private

	def user_params
	  params.require(:user).permit(:username, :avatar, :subscribers)
	end
end
