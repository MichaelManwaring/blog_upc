class SessionsController < ApplicationController
  
    #login page
    def new
    end

    
    #process data to compare to registered users
    def create
		@user = User.where(username: params[:username]).first      
        if @user && @user.password == params[:password]                 
            session[:user_id] = @user.id        
            redirect_to home_feed_path
        else
            flash[:danger] = 'Invalid email/password combination'
            render 'new'
		      end
	   end

    
    #logging out user
    def destroy
        session[:user_id] = nil
        redirect_to home_path
    end
    
end
