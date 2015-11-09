class WelcomeController < ApplicationController
  layout 'application' # Setting the layout from here
  def index
  		@tutor = "Codigo Facilito tutor"
  end
end
