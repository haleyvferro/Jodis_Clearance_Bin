class SalesController < ApplicationController
    def new
        @sale = Sale.new

        @players = Player.all
        @items = Item.all
    end

    def create
        @sale = Sale.create(sale_params)
        redirect_to player_path(@player)
    end

    private
    def sale_params
        params.require(:sale).permit(:player_id, :item_id)
    end
end
