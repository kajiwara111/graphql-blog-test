class BlogTrainsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]
  
  def new
    if params[:back]
      @blog_train = BlogTrain.new(blog_train_params)
    else
      @blog_train = BlogTrain.new
    end
  end

  def edit
    #@blog_train = BlogTrain.find(params[:id])
  end
  
  def create
    @blog_train = BlogTrain.new(blog_train_params)
    if @blog_train.save
      redirect_to blog_trains_path, notice: "ブログを作成しました"
    else
      render :new
    end
  end
  
  def index
    @blog_trains = BlogTrain.all.order(id: :asc)
  end

  def destroy
    @blog_train.destroy
    redirect_to root_path
  end
  
  def show
    #@blog_train = BlogTrain.find(params[:id])
  end
  
  def update
    #@blog_train = BlogTrain.find(params[:id])
    if @blog_train.update(blog_train_params)
      redirect_to blog_trains_path, notice: 'ブログを編集しました！'
    else
      render 'edit'
    end
  end
  
  def confirm
    @blog_train = BlogTrain.new(blog_train_params)
    render :new if @blog_train.invalid?
  end
  
    
  private
  
  def blog_train_params
    params.require(:blog_train).permit(:title, :content)
  end
  
  def set_blog
    @blog_train = BlogTrain.find(params[:id])
  end
  
end
