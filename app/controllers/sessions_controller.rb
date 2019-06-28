class SessionsController < ApplicationController

    # skip_before_action :authenticate, :only => [:new, :create]
    
    def new

        @users = [Student, Tutor]

    end

    def create
        byebug
        if params[:user_type] == "Student"
          @user=  Student.find_by(email: params[:email])
        else
           @user= Tutor.find_by(email:params[:email])
        end
        if @user.authenticate(params[:password])
            session[:current_user_id] = @user.id
        end
        redirect_to @user
    end


    def destroy
        reset_session
        redirect_to '/sessions/new'
    end

end