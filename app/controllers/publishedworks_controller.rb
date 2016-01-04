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
    	p @publishedwork
    	flash[:error] = @publishedwork.errors.full_messages
      redirect_to new_publishedwork_path
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
