class PublishedworksController < ApplicationController
	def index
		@publishedworks = PublishedWork.all
	end

	def new
		@publishedwork = PublishedWork.new
		render :new
	end

	def create
		@publishedwork = PublishedWork.new(pub_params)
		if @publishedwork.save 
			redirect_to publishedworks_path
    else
      redirect_to new_published_work_path
		end
	end

	def show
		@publishedworks = PublishedWork.all
		end

	private
	def pub_params
		params.require(:publishedwork).permit(:name, :description, :writer, :artist, :url)
	end

end
