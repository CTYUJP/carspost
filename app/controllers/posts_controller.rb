class PostsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]
  before_action :set_post, only: [:edit, :show,]


  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def show
  end

  def create
    @post = Post.new(post_params)
    if @post.save 
      flash[:notice] = "投稿を作成しました" 
      redirect_to posts_path
    else
      render "new" 
    end
  end 

  # def create
  #   Post.create(post_params)
  #   redirect_to root_path
  # end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] = "投稿を削除しました"
    redirect_to root_path
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

  def set_post
    @post = Post.find(params[:id])
  end

end