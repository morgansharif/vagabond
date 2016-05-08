class SessionsController < ApplicationController

  def new
    @user = User.new
    render :new
  end

  def create
     @user = User.confirm(user_params)
     if @user
       login(@user)
      #  flash[:message] = "Welcome " + @user.first_name
       redirect_to index_path
     else
       flash[:error] = "Wrong Email or Password"
       redirect_to login_path
     end
  end

   def destroy
        logout
        # flash[:notice] = "Peace Out"
        redirect_to index_path
   end

   private
   def user_params
     params.require(:user).permit(:email, :password)
   end

end
