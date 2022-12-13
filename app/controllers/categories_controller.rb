class CategoriesController < ApplicationController
    def index
        @categories = Category.all
    end

    def show
        @category = Category.find(params[:id])
    end
    
    def new
        @category = Category.new
    end
    
    def create
        @category = Category.new(category_params)
        if @category.save
        redirect_to categories_url
        else
        render :new, status: :unprocessable_entity
        end
    end

    def category_params
        params.require(:category).permit(:category_name)
    end
end
