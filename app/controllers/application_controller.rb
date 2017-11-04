class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

    def authenticate_admin_user!
	    redirect_to new_user_session_path
	    puts "asdfasdf"
	    if current_user && current_user.is_admin
	      # fine
	    else
	      redirect_to new_user_session_path
	    end
	  end
end
