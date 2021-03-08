class AttractionsController < ApplicationController
    def index
        @attractions = Attraction.all
    end

    def show
        @attraction = Attraction.find_by_id(params[:id])
    end

    def ride
        @user = User.find_by_id(session[:user_id])
        redirect_to user_path(@user)
    end
end
