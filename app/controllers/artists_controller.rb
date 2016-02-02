class ArtistsController < ApplicationController
	def show
		@users = User.all
	end

end
