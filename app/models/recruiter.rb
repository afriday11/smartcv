class Recruiter < ActiveRecord::Base
    validates :name, :email, :password_digest, presence: :true
end
