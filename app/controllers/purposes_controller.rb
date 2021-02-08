class PurposesController < ApplicationController
  def index
    @purposes = Purpose.includes(:user)
  end

  def show
    @purpose = Purpose.find(params[:id])
  end

  def new
    @purpose = Purpose.new
  end

  def create
    @purpose = Purpose.new(purpose_params)
    if @purpose.save
      redirect_to root_path
    else 
      render :new
    end
  end
  
  private

  def purpose_params
    params.require(:purpose).permit(:name, :unit).merge(user_id: current_user.id)
  end
end
