class SessionsController < ApplicationController
    def create
        @user = User.find_by(name: params[:username])
        if @user && @user.authenticate(params[:password])
            token = generate_token({id: @user.id})
            resp = {
                user: UserSerializer.new(@user).to_serialized_json,
                jwt: token
            }
            render json: resp
        else
            render json: {error: "Invalid Credentials"}, status: :unauthorized
        end
    end

    def destroy
    end

    def get_current_user
        render json: { user: UserSerializer.new(current_user).to_serialized_json }, status: :ok
    end
end
