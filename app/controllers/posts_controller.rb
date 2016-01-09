class PostsController < ApplicationController

def create
    @post = Post.create params[:post]
    redirect_to posts_path
  end
end

def delete
    @post = Post.find(params[:id])
    @post.delete
    redirect_to(:post)
    flash[:error] = "Post deleted."
  end
end

end