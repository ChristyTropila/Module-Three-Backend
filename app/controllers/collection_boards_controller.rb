class CollectionBoardsController < ApplicationController

    def index
        @boards=CollectionBoard.all
        render json: @boards
    end

    def show
        @board=CollectionBoard.find_by(id: params[:id])
        render json: @board
    end

    def new
        @board=CollectionBoard.new
    end
    
    def create
        @board=CollectionBoard.create(collection_params)
        if @board.save
         render json: @board
        else
            flash[:errors]=@board.errors.full_messages
    end

    def edit
        @current_board=CollectionBoard.find_by(id: params[:id])
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
       params.permit(:name) 
    end
end
