class PostsController < ApplicationController

  def index

  end

  def new
    @new_post = Post.new
    @email = params[:email]
  end

  def create
    @new_post = Post.create(post_params)
    if @new_post.save
      @new_post.user_id = params[:user_id]
       redirect_to walls_path
     end
  end

  def edit
     @edit_post = Post.find(params[:id])
  end


  private

    def post_params
       params.require(:post).permit(:text,:user_id)
    end

end
