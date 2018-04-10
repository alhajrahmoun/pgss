class Api::UsersController < ApplicationController
    def create
        @user = User.new(user_params)
        if @user.save
            render status: 200, json:{
                message: ["successful"]
            }.to_json 
        else
            render json: {message: @user.errors.to_a }
        end
    end

    private
    def user_params
        params.require(:user).permit(:email)
    end
end