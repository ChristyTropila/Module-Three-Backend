class CollectionBoardsController < ApplicationController

    def index
        @boards=CollectionBoard.all
        render json: @boards
    end

    def show
        @board=CollectionBoard.find(params[:id])
        render json: @board
    end


    def create
        @items=Item.find(params[:item_id])
        @board=CollectionBoard.create(collection_params)
        @items.collection_board_id=@board.id
        @board.items << @items
         render json: @board
       
end


    def update
      byebug
        @current_board=CollectionBoard.find(params[:id])
        items=@current_board.items
        @current_board.items << items
        @current_board.update(name: params[:name])
       byebug
        render json: @current_board
    end
     
    def findItems(id)
        Item.all.find |item|
        item.collection_board_id===id.to_i
    end


    def destroy
      @current_board=CollectionBoard.find(params[:id])
     items=@current_board.items
     @current_board.items.delete(items)
        @current_board.destroy
    end




    private
    def collection_params
       params.permit(:name, :id, :user_id, :items) 
    end
end
