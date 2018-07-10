class ApplicationController < ActionController::Base
  include SessionsHelper
  
  private
  
  def require_sign_in
    unless current_user
      flash[:alert] = "You must be logged in to do that"
      redirect_to new_session_path
    end
  end
  
  def moderator_user 
    if current_user.moderator?
      flash[:alert] = "You must be an admin to do that."
      redirect_to topics_path
    end
  end
  
end
