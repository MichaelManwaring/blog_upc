class PostsController < ApplicationController

def create
	@user = User.new(params[:id])
    if User.save
      flash[:id] = @User.id
      redirect_to @user
end

def delete

end


end
