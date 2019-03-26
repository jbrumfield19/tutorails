class LessonsController < ApplicationController

    def edit
        @lesson = Lesson.find(params[:id])
    end

    def new 
        @lesson = Lesson.new()
    end

    def create 
 #       byebug
        @lesson = Lesson.create(sess_params)
        redirect_to lesson_path(@lesson)
    end

     def index 
         @lessons = Lesson.all 
     end

    def show 
        @lesson = Lesson.find(params[:id])
    end 


    def update 
        lesson = Lesson.find(params[:id])
        lesson.update(sess_params)
        redirect_to lesson
    end

    def destroy 
        @lesson = Lesson.find(params[:id])
        @lesson.destroy
        redirect_to '/lessons'
    end
    def sess_params
        params.require(:lesson).permit(:tutor_id, :subject_id, :duration, :student_id, :day, :location_id)
    end
end
