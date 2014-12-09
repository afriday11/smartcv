class StudentRecruiter < ActiveRecord::Base
    belongs_to(
        :student,
        class_name: "Student",
        foreign_key: "student_id",
        primary_key: "id"
    )

    belongs_to :recruiter
end
