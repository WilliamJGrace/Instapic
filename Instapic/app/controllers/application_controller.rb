class ApplicationController < ActionController::Base

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def require_author
     redirect_to('/pics') unless @pic.user == current_user
  end




  helper_method :current_user
end
