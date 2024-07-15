class PostsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]


  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    Post.create(post_params)
    redirect_to "/"
  end

  private

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

  def post_params
    params.require(:post).permit(:image, :text).merge(user_id: current_user.id)
  end

end