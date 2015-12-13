class WritersController < ApplicationController
	def show
	@users = User.all
	end
end
