class PlayersController < ApplicationController

    before_action :find_player, only: [:show]

    def index
        @players = Player.all 
    end
    
    def new
        @player = Player.new
    end

    def create
        @player = Player.new(player_params)
        if @player.save
            redirect_to @player
        else
            @errors = @player.errors.full_messages
            render :new
        end
    end

    def show
    end

    private

    def find_player
        @player = Player.find(params[:id])
    end

    def player_params
       params.require(:player).permit(:name, :class, :level, :can_detect_magic, :gold)
    end

end
