class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def show
    @comment = Comment.find_by(id: params[:id])
  end

  def new
  end

  def create
    @comment = Comment.new
    @comment.content = params[:contents]
    @comment.post_id = params[:post_id]
    @comment.user_id = cookies[:user_id].to_i
 #   @comment.user_id = 3

    if @comment.save
      redirect_to "/posts/#{ @comment.post_id }"
    else
      render 'new'
    end
  end

  def edit
    @comment = Comment.find_by(id: params[:id])
  end

  def update
    @comment = Comment.find_by(id: params[:id])
    @comment.content = params[:content]
    @comment.post_id = params[:post_id]

    if @comment.save
      redirect_to "/posts/#{ @comment.post_id }"
    else
      render 'edit'
    end
  end

  def destroy
    @comment = Comment.find_by(id: params[:id])
    post_id = @comment.post_id
    @comment.destroy


    redirect_to "/posts/#{post_id}"
  end
end
