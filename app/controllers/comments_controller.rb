class CommentsController < ApplicationController

  def new
     @comment = Comment.new
     @post_id = params[:post_id]
  end

  def create
     @comment = Comment.create(replies)
     if @comment.save
       @comment.name = params[:name]
       @comment.post_id = params[:post_id]

       redirect_to walls_path
     end
  end

private

    def replies
       params.require(:comment).permit(:reply,:name,:post_id)
    end

end
