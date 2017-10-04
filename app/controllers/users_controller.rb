class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
		@addresses= Address.where(user_id: @user)
		@address= Address.new
	end
end
