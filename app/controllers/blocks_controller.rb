class BlocksController < ApplicationController
  def create
    @block = Block.new(block_params)
    if @block.save
      redirect_to purpose_path(@block.purpose.id)
    else
      @purpose = @block.purpose
      @blocks = @purpose.blocks
      render "purposes/show"
    end
  end

  private
  def block_params
    params.require(:block).permit(:value_id, :comment).merge(user_id: current_user.id, purpose_id: params[:purpose_id])
  end
end
