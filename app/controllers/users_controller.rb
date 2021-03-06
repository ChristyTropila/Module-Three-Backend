class UsersController < ApplicationController
    
    def index
        @users=User.all
        render json: @users
    end

    def show
        @user=User.find(params[:id])
        render json: @user
    end

    def login
        @error=flash[:error]
    end

    def handle_login

        @user=User.find_by(username: params[:username])
       if @user
         render json: @user
       else
        render json: {errors: @user.errors.full_messages}
       end
    
    end

    def logout
        session[:user_id]=nil
    end


    def create
        @user=User.create(user_params)
        if @user.valid?
            session[:user_id]=@user.id
         render json: @user
        else
            render json: {errors: @user.errors.full_messages}
    end
end



    private
    def user_params
      params.permit(:name, :username)
    end
end
