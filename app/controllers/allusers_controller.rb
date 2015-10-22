class AllusersController < ApplicationController

  def index
     @all_users = User.where.not(:id=>current_user.id)
  end

end
