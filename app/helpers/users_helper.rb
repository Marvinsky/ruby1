module UsersHelper

  	def current_user
    	if (user_id = session[:user_id])
      		@current_user ||= User.find_by(id: user_id)
    	elsif (user_id = cookies.signed[:user_id])
      		raise       # The tests still pass, so this branch is currently untested.
      		user = User.find_by(id: user_id)
      		if user && user.authenticated?(cookies[:remember_token])
        		login user
        		@current_user = user
      		end
    	end
  	end



	def is_number(n)
		if n =~ /^\d+$/
			true
		else
			false
		end
	end
end
