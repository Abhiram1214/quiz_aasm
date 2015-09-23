class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :posts
  has_many :friendships
  has_many :friends, :through => :friendships



  include AASM
  before_create :create_activation_code
  after_create :account_conformation

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable




         aasm do
           state :pending_activation, :initial => true
           state :activated
           state :removed


           event :activate do
             transitions :to => :activated
           end

           event :removed do
             transitions :to => :removed
           end
         end

     def account_conformation
       @user=User.last
        Conformation.welcome(@user).deliver_now
     end

    private

       def create_activation_code
           self.activation_code = SecureRandom.base64(15)
       end



end
