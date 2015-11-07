class ExamplesController < ApplicationController
  def form
  	@nombre = params[:nombre_usuario]
  end
end
