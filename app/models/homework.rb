class Homework < ActiveRecord::Base
	belongs_to :course
	belongs_to :teacher
	has_and_belongs_to_many :students
end
