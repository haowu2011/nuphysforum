class PostsController < ApplicationController
  before_action :check_if_signed_in
  
  def check_if_signed_in
    unless cookies[:user_id].present?
      redirect_to "/login", notice: "sign in and make sure cookies are enabled"
    end
  end
  
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def new
  end
    
  def create
    @post = Post.new
    @post.content = params[:contents]
    @post.category_id = params[:category_id]
    @post.user_id = cookies[:user_id].to_i
   # @post.user_id = 3

    if @post.save
      redirect_to "/categories/#{ @post.category_id }"
    else
      render 'new'
    end
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.content = params[:content]
    @post.category_id = params[:category_id]

    if @post.save
      redirect_to "/posts/#{ @post.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    category_id = @post.category_id
    @post.destroy


    redirect_to "/categories/#{category_id}"
  end
end

