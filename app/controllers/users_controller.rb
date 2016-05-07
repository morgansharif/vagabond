class UsersController < ApplicationController
  def show
    @user = User.find_by_id(params[:id])
    render :show
  end

  def create
    @user = User.new(user_params)
    if @user.save
      login(@user)
      flash[:notice] = "Account successfully created"
      redirect_to user_path(@user)
    else
      flash[:error] = @user.errors.full_messages.join(" , ")
      redirect_to new_user_path
    end
  end

  def update
    @user = User.find_by_id(params[:id])
    if @user.update(profile_params)
      flash[:notice] = "Account successfully updated"
      redirect_to user_path
    else
      redirect_to user_path
    end
  end

  def destroy
    user = User.find(current_user.id)
    user.destroy
    flash[:notie] = "Sorry to see you go. Account successfully deleted"
    redirect_to index_path
  end

  def new
    @user = User.new
    render :new
  end

  def edit
    @user = User.find_by_id(params[:id])
    render :edit
  end


  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

  def profile_params
    params.require(:user).permit(:first_name, :last_name, :img, :current_city)
  end
end
