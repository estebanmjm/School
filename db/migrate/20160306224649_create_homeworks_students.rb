class CreateHomeworksStudents < ActiveRecord::Migration
  def change
    create_table :homeworks_students, id: false do |t|
    	t.integer :homework_id, index: true
    	t.integer :student_id, index: true
    end
  end
end
