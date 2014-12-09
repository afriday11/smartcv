class StudentsController < ApplicationController
    def create
        student = Student.create(student_params) 
        if student.save
            #login
            redirect_to student_url 
        else
            flash.now[:errors] = student.errors.full_messages
        end
    end

    def new
       @student = Student.new 
    end

    def show
        @student = Student.find(params[:id])
    end

    def update
        @student = Student.find(params[:id])
    end

    def edit
    end

    def destroy
        student = Student.find(params[:id])
        student.destroy
    end

    private
    def student_params
        params.require(:student).permit(:name, :email, :password, :weixin, :weibo, :university, :grade, :majors, :phone_number, :interests, :about, :img_url)
    end
end
