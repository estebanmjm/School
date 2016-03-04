class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :lastname
      t.integer :ident

      t.timestamps null: false
    end
  end
end
