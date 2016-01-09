class PostsController < ApplicationController

def create
    @post = Post.create(post_params)
    redirect_to home_feed_path
end

def delete
    @post = Post.find(params[:id])
    @post.delete
    redirect_to home_feed_path
end

private
def post_params
    params.require(:post).permit(:title, :p_content)
end

end
