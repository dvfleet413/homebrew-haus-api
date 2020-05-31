class SessionsController < ApplicationController
    def create
        @user = User.find_by(name: params[:username])
        if @user && @user.authenticate(params[:password])
            render json: @user
        else
            render json: {error: "Invalid Credentials"}, status: :unauthorized
        end
    end

    def destroy
    end
end
