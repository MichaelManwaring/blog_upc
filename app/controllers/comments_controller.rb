class CommentsController < ApplicationController
  def create
	@comment=Comment.new(params[:comment])
  end

  def delete
  	@comment=Comment.where(params[:comment])
  	@comment.delete
  end
end
