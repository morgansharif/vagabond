class UsersController < ApplicationController
  def show
    @user = User.find_by_id(params[:id])
    render :show
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to user_path(@user)
    else
      flash[:error] = @user.errors.full_messages.join(" , ")
      redirect_to new_user_path
    end
  end

  def update
    user = User.find_by_id(params[:id])
    user.update(profile_params)
    redirect_to user_path
  end

  def delete
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
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end

  def profile_params
    params.require(:user).permit(:first_name, :last_name, :img, :current_city)
  end
end
