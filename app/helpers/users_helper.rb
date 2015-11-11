module UsersHelper

  	# Returns the current logged-in user (if any).
  	def current_user
  		#puts "CALLING CURRENT_USER IN THE HELPER"
    	#@usernow = User.find_by(id: request.session_options[:id])
    	#puts request.session_options[:id]
    	puts "WTDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD"
    	puts session[:id]
    	puts "after"
    	@current_user ||= User.find_by(id: session[:id])
    	#@current_user ||= User.find_by(id: request.session_options[:id])
  	end

  	# Logs out the current user.
  	def log_out
    	session.delete(:id)
    	@current_user = nil
  	end



	def is_number(n)
		if n =~ /^\d+$/
			true
		else
			false
		end
	end
end
