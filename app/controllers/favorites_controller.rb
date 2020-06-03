class FavoritesController < ApplicationController
    before_action :set_user

    def create
        @user.recipes << Recipe.find(params[:recipe_id])
        render json: @user
    end

    def destroy
        @user.recipes.delete(Recipe.find(params[:id]))
        render json: @user
    end


    private
        def set_user
            @user = User.find(params[:user_id])
        end
end
