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

	def create
		user = User.new(user_params)
		if user.save 
			redirect_to user_path(user)
		end
	end

	private
	def user_params
		params.require(:user).permit(:username, :first_name, :last_name, :email, :password, :age, :person)
	end

end