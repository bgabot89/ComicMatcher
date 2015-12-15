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
		 	@drawings = @user.drawings
    render :showGal
	end

	def showWrit
			 @user = User.find(params[:id])
    render :showWrit
  end


	def create
		@user = User.new(user_params)
    p user_params
		if @user.save 
      session[:user_id] = @user.id
			redirect_to user_path(@user)
    else
      redirect_to sign_up_path
		end

			# #testing creation of images
		 #   respond_to do |format|
   #    if @user.save

   #      if params[:images]
   #        # The magic is here ;)
   #        params[:images].each { |image|
   #          @user.drawings.create(image: image)
   #        }
   #      end
   #    end

    # end

	end


  def writNew
    render :newWrit
  end
  
	def edit
  	@user = User.find(params[:id])
  end

  def update

  		#test for update
  		user_id = params[:id]
  		@user = User.find(user_id)
  		updated_attributes = params.require(:user).permit(:about, :tech, :avatar, :image)
  	if @user.update_attributes(updated_attributes)
        if params[:images]
          # The magic is here ;)
          params[:images].each { |image|
            @user.drawings.create(image: image)
          }
          redirect_to @user
        end


     # old code
  	# user_id = params[:id]
  	# user = User.find(user_id)
  	# updated_attributes = params.require(:user).permit(:about, :tech, :avatar)
  	# user.update_attributes(updated_attributes)
  	# redirect_to user
    redirect_to @user
  end
end

	private
	def user_params
		params.require(:user).permit(:username, :first_name, :last_name, :email, :password, :age, :person)
	end

end