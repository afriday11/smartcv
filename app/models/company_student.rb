class CompanyStudent < ActiveRecord::Base
    validates :company_id, :student_id, presence: :true

    belongs_to :company
    belongs_to :student
end
