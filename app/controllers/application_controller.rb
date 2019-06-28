class ApplicationController < ActionController::Base

    # before_action :authenticate
   
    def index
        
    end
    
    # def authenticate
    #     if(session[:current_user_id] == nil || Tutor.find(session[:current_user_id]) == nil)
    #         redirect_to '/sessions/new'
    #     end
    # end
end
