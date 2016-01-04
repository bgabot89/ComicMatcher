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
     # @user = User.find(user_params)

     
    # render :show
	end

   #this method will send an email to the user
  def connect 
    @user = User.find(params[:id])
    p "Sent"
    #if the connect method is called, send an email to that user
     respond_to do |format|
      UserMailer.notification_email(@user).deliver_now
      format.html { redirect_to(request_path, :notice => 'User has successfully been sent an email.') }
      # format.json { render json: @user, status: :created, location: @user }
    # else
    #   format.html { render action: "show" }
    #   format.json { render json: @user.errors, status: :unprocessable_entity}
    end
    
  

    # redirect_to request_path
  end

	def showGal
		 @user = User.find(params[:id])
		 	@drawings = @user.drawings
    render :showGal
	end

	def showWrit
    @users = User.all
			 @user = User.find(params[:id])
       # @writing = Writing.new(user)
       @writings = @user.writings
    render :showWrit
  end


  #method for creating new user
	def create
		@user = User.new(user_params)
    p user_params
		if @user.save 
      session[:user_id] = @user.id
      flash[:success] = "Successfully created user"
			redirect_to user_path(@user)
    else
      flash[:error] = @user.errors.full_messages
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
  		updated_attributes = params.require(:user).permit(:first_name, :last_name, :about, :tech, :avatar, :image)
  	if @user.update_attributes(updated_attributes)
        if params[:images]
          # The magic is here ;)
          params[:images].each { |image|
            @user.drawings.create(image: image)
          }
          # redirect_to @user
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

def newDraw
  #test for update
      user_id = params[:id]
      @user = User.find(user_id)
      # updated_attributes = params.require(:user).permit(:about, :tech, :avatar, :image)
    # if @user.update_attributes(updated_attributes)
        if params[:images]
          # The magic is here ;)
          params[:images].each { |image|
            @user.drawings.create(image: image)
          }
          redirect_to @user
        end
    # redirect_to @user
  # end
   # render :newDraw 
end

# destroy writings
def destroy
  @user = User.find(params[:id])
  id = params[:id]
  # @user.writings
  # :id is being set to user.id
   writings =  Writing.find(:id)
    if current_user.writings.include? writing
      writing.destroy
      redirect_to user_path(@user)
  end
end

	private
	def user_params
		params.require(:user).permit(:username, :first_name, :last_name, :email, :password, :age, :person, :sex)
	end

end