class WelcomeController < ApplicationController
  layout 'ejemplo' # Setting the layout from here
  def index
  		@tutor = "Codigo Facilito tutor"
  end
end
