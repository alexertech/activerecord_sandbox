class CreateEnrollments < ActiveRecord::Migration[7.0]
  def change
    create_table :enrollments do |t|
      t.integer :student_id
      t.integer :klass_id
      t.string :grade

      t.timestamps
    end
    add_index :enrollments, :student_id
    add_index :enrollments, :klass_id
    add_foreign_key :enrollments, :students
    add_foreign_key :enrollments, :klasses
  end
end
