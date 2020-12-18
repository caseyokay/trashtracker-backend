class Api::V1::TrashItemsController < ApplicationController
    # skip_before_action :verify_authenticity_token
    def index
        trash_items = TrashItem.all 
        render json: trash_items 
    end

    def show
        trash_item = TrashItem.find(params[:id])
        render json: trash_item
    end


    def create
        trash_item = TrashItem.create!(trash_item_params)
        render json: trash_item
    end

    def update
        trash_item = TrashItem.find(params[:id])
        trash_item.update!(trash_item_params)
        render json: trash_item
    end

    def destroy
        trash_item = TrashItem.find(params[:id])
        trash_item.destroy!
        render json: {}
    end
    
    private
    def trash_item_params
        params.require(:trash_item).permit(:description, :date, :user_id, :trash_category_id)
    end
end
