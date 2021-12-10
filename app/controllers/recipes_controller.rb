# class RecipesController < ApplicationController
#     before_action :set_user
#     before_action :set_recipe, only: [ :show, :edit ]

#     def index 
#         @recepes ||= @user.recipes.order(:title) if @user
#         @recipes ||= Recipes.order(:title) 
#     end

#     def show 
#     end

#     def new 
#         @recipe = Recipe.new 
#     end

#     private

#         def set_recipe 
#             @recipe ||= Recipe.find_by id: params[:id]
#             @images ||= @recipe.image + [ image.new ]
#         end

#         def set_user 
#             @user ||= User.find_by id: params[:user_id]
#         end

#     end
# end
