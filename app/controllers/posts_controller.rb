class PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    search_title = params[:title]
    @posts = current_user.posts.where(title: search_title)
    Rails.logger.info @posts.inspect
    Rails.logger.info search_title
  end

  def show
  end

  def new
  end

  def create
    post = current_user.posts.build(posts_params)
    # post = Post.build(posts_params)

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
