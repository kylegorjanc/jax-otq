module SessionsHelper

  def authenticate!
	redirect_to log_in_path unless current_user
  end

  def current_user
  	if session[:user_id]
  		@user = user.find(session[:user_id])
  		redirect_to profile_path
  	end
  end
end

 def logged_in
   !current_user.nil?
 end