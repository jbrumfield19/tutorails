class StudentsController < ApplicationController

    def edit
        @student = Student.find(params[:id])
    end

    def new 
        @student = Student.new 
    end

    def create 
        student = Student.create(student_params)
        redirect_to student
    end

    def index 
        @student = Student.all 
    end

    def show 
        @student = Student.find(params[:id])
    end 

    def update 
        student = Student.find(params[:id])
        student.update(student_params)
        redirect_to student
    end

    def destroy 
        @student = Student.find(params[:id])
        @student.destroy
        redirect_to '/students'
    end

    def student_params
        params.require(:student).permit(:name, :level)
    end

end
