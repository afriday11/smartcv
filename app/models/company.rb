class Company < ActiveRecord::Base
    validates :name, :industry, :size, presence: :true

    has_many :company_students
    has_many :students, through: :company_students, source: :student
end
