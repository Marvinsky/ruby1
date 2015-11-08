class ExamplesController < ApplicationController
  def form
  	@nombre = params[:nombre_usuario]
    @allregistries = Example.all
    @list = []
    @allregistries.each do |u|
    	@list.push(u.nombre)
    end
    @ejemplo = Example.create({nombre: @nombre})
  end
end