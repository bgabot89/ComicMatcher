class WritersController < ApplicationController
	def show
	@users = User.all
	end

	def new
		@user = User.find(session[:user_id])
		# @user = User.find(params[:id])
		@writing = Writing.new
	end

	def update
		@user = User.find(params[:id])
		@writing = Writing.find(params[:id])
	end

 def create 
    @user = User.find(params[:id])
 # event = Event.new(event_params)
    writing = Writing.create(writing_params)
    if writing.save  
      redirect_to @user
    else
      redirect_to root_path
    end
  end

private
def writing_params
  params.require(:writing).permit(:name, :description)
end

end
