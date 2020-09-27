class UsersController < ApplicationController
    
    def index
        @users=User.all
        render json: @users
    end

    def show
        @user=User.find_by(id: session[:id])
    end

    def new
       @user=User.new
    end

    def create
        @user=User.create(user_params)
        if @user.save
            session[:user_id]=@user.id
         render json: @user
        else
            flash[:erros]=@user.errors.full_messages
    end



    private
    def user_params
      params.permit(:name, :username)
    end
end
