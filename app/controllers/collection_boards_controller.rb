class CollectionBoardsController < ApplicationController

    def index
        @boards=CollectionBoard.all
        render json: @boards
    end

    def show
        @board=CollectionBoard.find(params[:id])
        render json: @board.id
    end


    def create
     byebug
        @board=CollectionBoard.create(collection_params)
        @items=Item.find(params[:item_id])
        @items.collection_board_id=@board.id
        @board.items << @items
        byebug
         render json: @board
        
        
end


    def update
        @current_board=CollectionBoard.find_by(id: params[:id])
        @current_board.update(collection_params)
        render json: @current_board
    end

    def delete
        @current_board=CollectionBoard.find_by(id: params[:id])
        @current_board.destroy
    end


    private
    def collection_params
       params.permit(:name, :id, :user_id, :items) 
    end
end
