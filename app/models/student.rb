class Student < ActiveRecord::Base
    validates(
        :name, 
        :password_digest, 
        :email, 
        :university, 
        { presence => :true }
    )

    has_many(
        :company_students,
        class_name: "CompanyStudent",
        foreign_key: "student_id",
        primary_key: "id"
    )

    has_many :companies, through: :company_students, source: :company
end
