class ExamplesController < ApplicationController
  def form
  	@nombre = params[:nombre_usuario]
  	#@ejemplo = Example.create({nombre: @nombre})
  	@ejemplo = Example.create({nombre: @nombre})
  end
end