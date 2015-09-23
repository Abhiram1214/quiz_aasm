class ActivationsController < ApplicationController

  def edit
     @code = User.find_by(:activation_code=>params[:id])

     if @code
      @code.activate!
     end
     @code.aasm.current_state

  end

end
