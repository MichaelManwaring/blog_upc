class HomeController < ApplicationController
    
    def index
    	@sesh=current_user
    	if @sesh!=nil
    		redirect_to home_feed_path
    	end
        @users=User.all
    end

    def feed
        @posts=Post.all
  	     @users=User.all
  	     @post=Post.new
  	     @comment=Comment.new
  	     @currentuser=current_user 
    end

    def show
  	     @post=Post.new(params[:user])
    end
    def usernamefun(post)
    	@username=post.user.username
    end
end
