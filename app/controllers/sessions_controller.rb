class SessionsController < ApplicationController

  def new
    @user = User.new
    render :new
  end

  def create
    user = User.where(email: params[:user][:email].downcase).first
    if user && user.authenticate(params[:user][:password])
       if user.email_confirmed
         login(user)
         redirect_to index_path
       else
         flash[:error] = "Plesae activate your account by following the instructions in the Account
         confirmation email you received to proceed"
         render :new
       end
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
