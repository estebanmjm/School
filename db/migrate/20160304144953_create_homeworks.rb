class CreateHomeworks < ActiveRecord::Migration
  def change
    create_table :homeworks do |t|
      t.string :wording
      t.datetime :date

      t.timestamps null: false
    end
  end
end
