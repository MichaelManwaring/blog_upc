class CommentsController < ApplicationController
  def create
	@user=current_user
	@comment=Comment.create(comment_params)
	@user.comments.push(@comment)
	# @post=Post.find(params[:id])
  @post.comments.push(@comment)
  redirect_to home_feed_path
  end

  def delete
  	@comment=Comment.where(params[:comment])
  	if @comment.id=session[:user_id]
  	  	@comment.delete
	else
    	flash[:alert] = "Not your comment to delete!"   
    end
  end
  private
  def comment_params
  	params.require(:comment).permit(:c_content, :post_id)
  end
end
