class Api::V1::TrashItemsController < ApplicationController
    def show
        trash_item = TrashItem.find(params[:id])
        render json: trash_item
    end

    def index
        trash_items = TrashItem.all 
        render json: trash_items 
    end

    def create
        trash_item = TrashItem.create!(trash_item_params)
        render json: trash_item
    end

    def destroy
        trash_item = TrashItem.find(params[:id])
        trash_item.destroy
    end
    
    private
    def trash_item_params
        params.require(:trash_item).permit(:description, :date, :user, :trash_category)
    end
end
