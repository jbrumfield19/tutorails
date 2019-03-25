class TutorsController < ApplicationController


    def edit
        @tutor = Tutor.find(params[:id])
    end

    def new 
        @tutor = Tutor.new 
    end

    def create 
        tutor = Tutor.create(tutor_params)
        redirect_to student
    end

    def index 
        @tutor = Tutor.all 
    end

    def show 
        @tutor = Tutor.find(params[:id])
    end 

    def update 
        tutor = Tutor.find(params[:id])
        tutor.update(params[:tutor])
        redirect_to user
    end

    def tutor_params
        params.require(:tutor).permit(:name, :subject, :level, :bio)
    end

end


end
