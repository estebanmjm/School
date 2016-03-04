class TeachersController < ApplicationController
	def index
		@teacher = Teacher.all
	end

	def new
		@teacher = Teacher.new
	end

	def create
		@teacher = Teacher.new(teacher_params)
		@teacher.save
		redirect_to teachers_path
		#puts teacher_params
	end

	def community #esto me sirve para agregar una vista igual a la lista de profesores sin que se pueda editar (le borro la parte de editar y eliminar y de resto la copio igual) (ver codigo en el archivo routes en la parte resources)
		@teacher = Teacher.all
		
	end

	def show
		@teacher = Teacher.find(params[:id])
		
	end

	def edit
		@teacher = Teacher.find(params[:id])
	end

	def update
		@teacher = Teacher.find(params[:id])
		@teacher.update(teacher_params)
		redirect_to teachers_path #si coloco teacher_path, se ira a la vista show, pero como no la necesito lo coloco en plural para que se me vaya a la vistad de todas las torres
	end

	def destroy
		@teacher = Teacher.find(params[:id])
		@teacher.destroy
		redirect_to teachers_path
	end
	
	def teacher_params
		params.require(:teacher).permit(:name, :lastname, :ident)
	end
end
