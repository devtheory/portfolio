class RequestsController < ApplicationController
  
  def new
    @request = Request.new
    #authorize @request, role != dev
  end

  def create
    @request = current_user.requests.build(request_params)
    #authorize @request

    if @request.save
      redirect_to @request, notice: "Request successfully created"
    else
      flash[:error] = "Request failed. Please try again."
      render :new
    end
  end

  def show
    @request = Request.find(params[:id])
    #authorize @request
  end

  def edit
    @request = Request.find(params[:id])
    #authorize @request
  end

  def update
    @request = Request.find(params[:id])

    if @request.update_attributes!(request_params)
      redirect_to @request, notice: "Request has been updated"
    else
      flash[:error] = "There was an error processing your update. Please try again."
      render :edit
    end
  end

  def index
    @requests = current_user.requests
  end

  private

  def request_params
    params.require(:request).permit(:purpose, :timeline, :budget, :users_supported, :need_hosting, :remarks)
  end
end
