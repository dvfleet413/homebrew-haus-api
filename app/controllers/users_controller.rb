class UsersController < ApplicationController
    before_action :set_user, only: [:update, :destroy]

    def create
        user = User.new(users_params)
        if user.save
            token = generate_token({id: user.id})
            resp = {
                user: UserSerializer.new(user).to_serialized_json,
                jwt: token
            }
            render json: resp, status: :created
        else 
            render json: user.errors, status: :unprocessable_entity
        end
    end

    # def update
    #     if @user.update
    #         render json: @user
    #     else 
    #         render json: user.errors, status: :unprocessable_entity
    #     end
    # end

    def destroy
        @user.destroy
    end

    private
        def set_user
            @user = User.find(params[:id])
        end

        def users_params
            params.require(:user).permit(:name, :email, :password, :password_confirmation)
        end
end
