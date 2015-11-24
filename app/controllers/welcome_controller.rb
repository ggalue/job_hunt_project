class WelcomeController < ApplicationController
  def index
  end

  def about
  end

  def contact
  end

  def show_user
  	@user = current_user
  end 
end
