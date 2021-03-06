class ItemsController < ApplicationController
    before_action :find_item, only: [:show, :edit, :update, :destroy]

    def index
        @items = Item.all
    end

    def new
        @item = Item.new
    end

    def create
        @item = Item.new(item_params)
        if @item.save
            redirect_to @item
        else
            @errors = @item.errors.full_messages
            render :new
        end
    end

    def show
    end

    def edit
    end

    def update
        if @item.update(item_params)
            redirect_to @item
        else
            @errors = @item.errors.full_messages
            render :edit
            #how do i keep jodi's price static
        end
    end

    def destroy
        @item.destroy
        redirect_to items_path
    end

    private

    def find_item
        @item = Item.find(params[:id])
    end

    def item_params
       params.require(:item).permit(:name, :description, :img_url, :price) 
    end


end
