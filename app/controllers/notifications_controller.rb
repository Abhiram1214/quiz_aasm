class NotificationsController < ApplicationController

  def pending_friendship
    @pending_friendship = Friendship.where(:to_id => current_user.id)
  end


end
