class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :password_digest, null: false
      t.string :weixin
      t.string :weibo
      t.string :university, null: false
      t.string :grade
      t.string :majors
      t.string :phone_number
      t.text :interests
      t.text :about
      t.string :img_url

      t.timestamps
    end

    add_index :students, :grade
    add_index :students, :majors
    add_index :students, :university
  end
end
