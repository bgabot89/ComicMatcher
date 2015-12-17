class PublishedworksController < ApplicationController
	def index
		@publishedworks = PublishedWork.all
	end

	def new
		@publishedwork = PublishedWork.new
		render :new
	end

	def show
		@publishedworks = PublishedWork.all
		end
end
