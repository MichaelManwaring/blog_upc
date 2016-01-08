class HomeController < ApplicationController
  def index
  	@users=User.all
  end

  def feed
  end

  def show
  	@post=Post.new(params[:user])
  end

end