class CreateCompanyStudents < ActiveRecord::Migration
  def change
    create_table :company_students do |t|
      t.integer :company_id, null: false
      t.integer :student_id, null: false

      t.timestamps
    end

    add_index :company_students, :company_id
    add_index :company_students, :student_id
  end
end
