class Api::V1::TrashCategoriesController < ApplicationController
    def show
        trash_category = TrashCategory.find(params[:id])
        render json: trash_category
    end

    def index
        trash_categories = TrashCategory.all 
        render json: trash_categories
    end
end
