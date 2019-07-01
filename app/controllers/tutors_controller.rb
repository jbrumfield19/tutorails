class TutorsController < ApplicationController


    def edit
        @tutor = Tutor.find(params[:id])
    end

    def new 
        @tutor = Tutor.new 
    end

    def create 
        @tutor = Tutor.create(tutor_params)
        @tutor.save
        redirect_to @tutor
    end

    def index 
        @tutor = Tutor.all 
    end

    def show 
        @tutor = Tutor.find(params[:id])
    end 

    def update 
        tutor = Tutor.find(params[:id])
        tutor.update(tutor_params)
        redirect_to tutors_url
    end

    def destroy 
        @tutor = Tutor.find(params[:id])
        @tutor.destroy
        redirect_to '/tutors'
    end

    def tutor_params
        params.require(:tutor).permit(:name, :subject_id, :level_id, :bio, :password_digest)
    end

end


