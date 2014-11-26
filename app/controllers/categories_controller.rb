class CategoriesController < ApplicationController
  before_action :check_if_signed_in
  
  def check_if_signed_in
    unless cookies[:user_id].present?
      redirect_to "/login", notice: "sign in and make sure cookies are enabled"
    end
  end
  
  
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find_by(id: params[:id])
  end

  def new
  end

  def create
    @category = Category.new
    @category.category = params[:category]
    @category.image_url = params[:image_url]

    if @category.save
      redirect_to "/categories/#{ @category.id }"
    else
      render 'new'
    end
  end

  def edit
    @category = Category.find_by(id: params[:id])
  end

  def update
    @category = Category.find_by(id: params[:id])
    @category.category = params[:category]
    @category.image_url = params[:image_url]

    if @category.save
      redirect_to "/categories/#{ @category.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @category = Category.find_by(id: params[:id])
    @category.destroy


    redirect_to "/categories"
  end
end
