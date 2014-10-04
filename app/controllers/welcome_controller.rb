class WelcomeController < ApplicationController
  
  def index
    @dev = User.where(role: "dev")
  end

  def dashboard
    @projects = Project.all
    @requests = Request.all
  end

end
