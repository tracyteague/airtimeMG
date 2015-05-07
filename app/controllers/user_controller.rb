class UserController < ApplicationController
	def index
		@user = User.create(params)
	end

	def create
		@user = User.create(params)
	end
end
