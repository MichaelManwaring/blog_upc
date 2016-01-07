class UsersController < ApplicationController
    
    
    def new 
        @user = User.new
    end 
    
    
    def create   
        @user = User.create(user_params)
        if @user.save     
            # flash[:notice] = "Your account was created successfully."     
            redirect_to user_path @user   
        else     
            # flash[:alert] = "There was a problem saving your account."   
            redirect_to new_user_path   
        end 
    end
    
    
    def show
        @user = User.find(params[:id])
    end

    
    def edit
        @user = User.find(params[:id])
    end
    
    
    private
    def user_params
        params.require(:user).permit(:username, :email, :password)
    end
    
    
end