class UserSessionsController < ApplicationController

	def new
		@user = User.new
	end

	def create
    	@user = User.find_by(nombre: params[:username].downcase)
    	@pass = User.find_by(password: params[:password])
    	if @user && @pass
    		redirect_to(:posts, message: "Loging success")
      		# Log the user in and redirect to the user's show page.
    	else
      		flash[:danger] = 'Invalid email/password combination' # Not quite right!
      		render 'new'
    	end
  	end

	#definir el logout
	def destroy
		logout
		redirect_to(:users, message: "Logged out")
	end
end