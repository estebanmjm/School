class StudentsController < ApplicationController
	def index
		@student = Student.all
	end

	def new
		@student = Student.new
	end

	def create
		@student = Student.new(student_params)
		@student.save
		redirect_to students_path
		#puts student_params
	end

	
	def show
		@student = Student.find(params[:id])
		
	end

	def edit
		@student = Student.find(params[:id])
	end

	def update
		@student = Student.find(params[:id])
		@student.update(student_params)
		redirect_to students_path #si coloco student_path, se ira a la vista show, pero como no la necesito lo coloco en plural para que se me vaya a la vistad de todas las torres
	end

	def destroy
		@student = Student.find(params[:id])
		@student.destroy
		redirect_to students_path
	end
	
	def student_params
		params.require(:student).permit(:name, :lastname, :ident, { course_ids: [] })
	end
end
