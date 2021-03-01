class PurposesController < ApplicationController
  before_action :authenticate_user!, only: [:new]

  def index
    if user_signed_in?
      @purposes = current_user.purposes
    end
  end

  def show
    purpose = Purpose.find(params[:id])
    if current_user.id == purpose.user_id
      @purpose = purpose
      @block = Block.new
      @blocks = @purpose.blocks.includes(:user).order('created_at DESC')
    else 
      redirect_to action: :index
    end
  end

  def new
    @purpose = Purpose.new
  end

  def edit
    @purpose = Purpose.find(params[:id])
    unless current_user.id == @purpose.user_id
      redirect_to action: :index
    end
  end

  def update
    purpose = Purpose.find(params[:id])
    if purpose.update(purpose_params)
      redirect_to purpose_path
    else
      render :edit
    end
  end

  def destroy
    purpose = Purpose.find(params[:id])
    purpose.destroy
    redirect_to root_path
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
    params.require(:purpose).permit(:name, :unit, :per).merge(user_id: current_user.id)
  end
end
