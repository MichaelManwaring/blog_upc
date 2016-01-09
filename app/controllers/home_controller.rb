class HomeController < ApplicationController
    
    def index
        @users=User.all
    end

    def feed
        @posts=Post.all
  	     @users=User.all
  	     @post=Post.new
  	     @comment=Comment.new
    end

    def show
  	     @post=Post.new(params[:user])
    end
    def usernamefun(post)
    	@username=post.user.username
    end
end
