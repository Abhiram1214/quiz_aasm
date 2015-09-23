class WallsController < ApplicationController

  def index


    @friend_logic = Friendship.find_by(:from_id=>current_user.id) || Friendship.find_by(:to_id=>current_user.id)

  if @friend_logic!=nil
     @from_posts = Post.find_by(:user_id=>@friend_logic.from_id)
     @to_posts = Post.find_by(:user_id=>@friend_logic.to_id)
     @comments = Comment.all
  end
  
  end

end
