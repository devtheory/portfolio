class WelcomeController < ApplicationController
  
  def index
    @dev = User.find(1)
  end

  def dashboard
    @projects = Project.all
    @requests = Request.all
  end

end
