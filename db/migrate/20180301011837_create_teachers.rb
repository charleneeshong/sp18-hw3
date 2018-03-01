class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
      t.text :full_name
      t.text :course_name
      t.text :grade_level

      t.timestamps
    end
  end
end
