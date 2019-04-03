class ItemsController < ApplicationController

    def create
        @list = List.find(params[:list_id])
        @item = @list.list_items.create(item_params)
        
        redirect_to list_path(@list)
    end

    def destroy
        @list = List.find(params[:list_id])
        @item = @list.list_items.find(params[:id])
        @item.destroy

        redirect_to list_path(@list)
    end

    private
        def item_params
            params.require(:list_item).permit(:title, :status)
        end

end
