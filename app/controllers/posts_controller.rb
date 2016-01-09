class PostsController < ApplicationController

def create
    @post = Post.create(post_params)
    redirect_to home_feed_path
end

def delete
    @post = Post.find(params[:id])
  	if @post.id=session[:user_id]
  	  	@post.delete
	else
    	flash[:alert] = "Not your post to delete!"   
    end
    redirect_to home_feed_path
end
def show
	@post=Post.find(params[:id])
	
end

private
def post_params
    params.require(:post).permit(:title, :p_content)
end

end
