class SessionsController < ApplicationController

    def edit
        @user = User.find(params[:id])
    end

    def new 
        @user = User.new 
    end

    def create 
        user = User.create(user_params)
        redirect_to user
    end

    def index 
        @user = User.all 
    end

    def show 
        @user = User.find(params[:id])
    end 

    def update 
        user = User.find(params[:id])
        user.update(params[:user])
        redirect_to user
    end


end
