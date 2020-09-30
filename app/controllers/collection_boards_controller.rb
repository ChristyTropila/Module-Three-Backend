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
     if @board.valid?
         render json: @board
        else
            render json: {errors: @board.errors.full_messages}
        end
    end



    def update
        @current_board=CollectionBoard.find(params[:id])
        items=@current_board.items
        @current_board.items << items
        @current_board.update(name: params[:name])
        render json: @current_board
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
