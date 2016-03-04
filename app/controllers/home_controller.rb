class HomeController < ApplicationController
	def index
		@course = Course.all
		@teacher = Teacher.all
	end
end
