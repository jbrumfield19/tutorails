class ApplicationController < ActionController::Base

    before_action :current_user
   
    def current_user

        @current_user  ||= Student.find(session[:current_user_id])

        
    end

    
    # def authenticate
    #     if(session[:current_user_id] == nil || Tutor.find(session[:current_user_id]) == nil)
    #         redirect_to '/sessions/new'
    #     end
    # end
end
