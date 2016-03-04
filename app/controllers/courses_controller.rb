class CoursesController < ApplicationController
	def index
		@course = Course.all
	end

	def new
		@course = Course.new
	end

	def create
		@course = Course.new(course_params)
		@course.save
		redirect_to courses_path
		#puts COURSE_params
	end

	def show
		@course = Course.find(params[:id])
		
	end

	def edit
		@course = Course.find(params[:id])
	end

	def update
		@course = Course.find(params[:id])
		@course.update(course_params)
		redirect_to courses_path #si coloco course_path, se ira a la vista show, pero como no la necesito lo coloco en plural para que se me vaya a la vistad de todas las signaturas
	end

	def destroy
		@course = Course.find(params[:id])
		@course.destroy
		redirect_to courses_path
	end
	
	def course_params
		params.require(:course).permit(:name, :code)
	end
end
