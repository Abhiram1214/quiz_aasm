class Friendship < ActiveRecord::Base

  include AASM

  belongs_to :user
  belongs_to :friend, :class => 'User'

  aasm do
      state :pending_friendship , :initial => true
      state :friend
      state :block
      state :remove

      event :invitation do
         transitions :to => :pending_friendship
      end

      event :accepted do
          transitions :to => :friend
      end



  end

end
