class Student < ActiveRecord::Base
	has_and_belongs_to_many :homeworks
	has_and_belongs_to_many :courses
end
