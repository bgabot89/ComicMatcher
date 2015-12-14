class UsersController < ApplicationController
	def index 
		@users = User.all
		#optional
		render :users
	end

	def new
		@user = User.new
		render :new
	end

	def show
		 @user = User.find(params[:id])
    render :show
	end

	def showGal
		 @user = User.find(params[:id])
    render :showGal
	end

	def create
		user = User.new(user_params)
		if user.save 
			redirect_to user_path(user)
		end
	end

	def edit
  	@user = User.find(params[:id])
  end

  def update
  	user_id = params[:id]
  	user = User.find(user_id)
  	updated_attributes = params.require(:user).permit(:about, :tech, :avatar)
  	user.update_attributes(updated_attributes)
  	redirect_to user
  end

	private
	def user_params
		params.require(:user).permit(:username, :first_name, :last_name, :email, :password, :age, :person)
	end

end