class FavoritesController < ApplicationController
    before_action :set_user

    def create
        # Something like @user.recipes << Recipe.find(params[:id])
    end

    def destroy
        # Something like @user.recipes.delete(Recipe.find(params[:id]))
    end


    private
        def set_user
            # something like @user = User.find(params[:userId])
        end
end
