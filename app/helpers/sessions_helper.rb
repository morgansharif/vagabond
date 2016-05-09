module SessionsHelper

  def login(user)
    session[:user_id] = user.id
    @current_user = user
  end

  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
  end

  def logged_in?
    if current_user == nil
      redirect_to login_path
    end
  end

  def logout
    @current_user = session[:user_id] = nil
  end

  def allowed?(user_id)
    current_user ? user_id == current_user.id : false
  end

end
