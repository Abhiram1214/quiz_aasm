class WallsController < ApplicationController

  def index


    @friend_from_logic = Friendship.where(:from_id=>current_user.id)
    @friend_to_logic = Friendship.where(:to_id=>current_user.id)

    @friend_from_logic.each do |friend_from|
      if friend_from.aasm_state == "friend"
        @from = friend_from.from_id
        @from_to = friend_from.to_id
      end
    end

    @friend_to_logic.each do |friend_to|
      if friend_to.aasm_state == "friend"
        @to = friend_to.to_id
        @to_from = friend_to.from_id
      end
    end

  if @friend_from_logic!=nil
     @from_posts = Post.where(:user_id=>@from)
     @to_posts = Post.where(:user_id=>@from_to)

  end


    if @friend_to_logic!=nil
       @from_posts_friends = Post.where(:user_id=>@to_from)
       @to_posts_friends = Post.where(:user_id=>@to)

    end

  end

end
