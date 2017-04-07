class HomesController < ApplicationController
   before_action :authenticate_user!
  def contractus
  	#render "articles/contractus"
  end

  def aboutus
  	
  end

  def privacy
	end

end