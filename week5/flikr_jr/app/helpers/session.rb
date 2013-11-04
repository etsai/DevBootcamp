helpers do
  def current_user
    if session[:user_id]
      @current_user ||= User.file_by_id(session[:user_id])
    end
  end

  def logged_in?
    !current_user.nil?
  end

  def authenticate(username, password)
    @user = User.find_by_username(username)
    if @user.password == password
      session[:user_id] = @user.id
    end
  end
end