require 'pry'
class UsersController < ApplicationController
    def show
        @user = User.find_by_id(params[:id])
        if session[:user_id] != @user.id
            redirect_to root_path
        else
            if !@user.admin
                @mood = @user.mood
            end
        end
    end
    
    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        session[:user_id] = @user.id
        redirect_to user_path(@user)
    end

    private

    def user_params
        params.require(:user).permit(:name, :height, :tickets, :happiness, :nausea, :password, :admin)
    end
end
