class WritingsController < ApplicationController
		def show
	@users = User.all
	 id = params[:id]
  # find the writing with that id and save to an instance variable
  @writing = Writing.find(id)
  # render the show page -- it will have access to the @writing variable
  render :show
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
    @user = User.find(session[:user_id])
    writing = Writing.create(writing_params)
    if writing.save  
    	p writing
      redirect_to @user
    else
      redirect_to root_path
    end
  end

  def destroy
    @user = User.find(session[:user_id])
  
  #   writing = Writing.find(id)
  #   if current_user.writings.include? writing
  #     writing.destroy
  #     redirect_to user_path(@user)
  # end
end

private
def writing_params
  params.require(:writing).permit(:name, :description, :user_id)
end
end
