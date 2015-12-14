class WritersController < ApplicationController
	def show
	@users = User.all
	end

	def update
		@user = User.find(params[:id])
		@writing = Writing.find(params[:id])
	end

end
