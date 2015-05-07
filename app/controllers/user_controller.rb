class UserController < ApplicationController
	def index
	end

	def create
		@user = User.create(params)
	end
end
