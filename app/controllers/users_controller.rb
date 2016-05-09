class UsersController < ApplicationController
  def show
    @user = User.find_by_id(params[:id])
    render :show
  end

  def create
    @user = User.new(user_params)
    if @user.save
      UserMailer.registration_confirmation(@user).deliver
      # login(@user)
      flash[:notice] = "Plesae confirm your email address to continue"
      redirect_to login_path
    else
      flash.now[:error] = @user.errors.full_messages.join(" , ")
      render :new
    end
  end

  def confirm_email
    user = User.find_by_confirm_token(params[:id])
    if user
      user.email_activate
      flash[:success] = "Welcome to the Vagabond! Your email has been confirmed.
      Please sign in to continue."
      redirect_to login_path
    else
      flash[:error] = "Sorry. User does not exist"
      redirect_to new_user_path
    end
  end

  def update
    @user = User.find_by_id(params[:id])
    if allowed?(@user.id) && @user.update(profile_params)
      flash[:notice] = "Account successfully updated"
      redirect_to user_path
    else
      redirect_to user_path(@user)
      flash.now[:error] = @user.errors.full_messages.join(" , ")
    end
  end

  def destroy
    user = User.find_by_id(params[:id])
    if allowed?(user.id) && user.destroy
      flash[:notie] = "Sorry to see you go. Account successfully deleted"
      redirect_to index_path
    else
      redirect_to user_path
    end

  end

  def new
    @user = User.new
    render :new
  end

  def edit
    logged_in?
    @user = User.find_by_id(params[:id])
  end


  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

  def profile_params
    params.require(:user).permit(:first_name, :last_name, :img, :current_city)
  end
end
