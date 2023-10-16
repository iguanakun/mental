class TemptationsController < ApplicationController
  before_action :authenticate_user!

  def new
    @temptation = Temptation.new
  end

  def create
    @temptation = Temptation.new(temptation_params)
    if @temptation.save
      redirect_to lists_temptations_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def lists
    @temptations = current_user.temptations.order("created_at DESC")
  end

  private

  def temptation_params
    params.require(:temptation).permit(:event, :talk, :cost, :get_out).merge(user_id: current_user.id)
  end
end
