class CreateCoursesTeachers < ActiveRecord::Migration
  def change
    create_table :courses_teachers, id: false do |t|
    	t.integer :course_id, index: true
    	t.integer :teacher_id, index: true
    end
  end
end
