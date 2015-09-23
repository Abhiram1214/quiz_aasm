class FriendshipsController < ApplicationController

  def index
    @new_invitation = Friendship.create(:from_id=>params[:from_id], :to_id=>params[:to_id])
    @new_invitation.invitation!
  end


    def accept_friend
      @accepted_friendship = Friendship.find_by(:from_id=>params[:from_id], :to_id=>params[:to_id])
      @accepted_friendship.accepted!
    end

end
