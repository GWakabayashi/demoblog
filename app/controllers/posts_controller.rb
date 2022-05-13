class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :find_post, only: [:show, :update, :edit, :destroy]

  def index
    @posts = Post.all.order("created_at DESC")
  end


  # C # R # U # D #


  ####### CREATE ######

  # GET method

  def new
    @post = Post.new
  end

  # POST method

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to @post
    else
      render 'new'
    end

  end


  ###### READ#######

  # GET method

  def show
  end



  ###### UPDATE ######

  # POST method

  def update

    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  # GET method

  def edit
  end



  ###### DELETE ######

  # DELETE method

  def destroy
    @post.destroy

    redirect_to posts_path
  end 




  # ****** PRIVATE METHODS ******

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end


  def find_post
    @post = Post.find(params[:id])
  end
    

end
