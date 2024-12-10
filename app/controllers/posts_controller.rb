class PostsController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def show
  end

  def new
  end

  def create
    post = Post.build(posts_params)

    Rails.logger.debug "#{post.inspect}"

    post.save!

    redirect_to posts_path
  end

  def edit
  end

  private
  def posts_params
    params.permit(:title, :description)
  end
end
