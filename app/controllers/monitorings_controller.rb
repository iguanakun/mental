class MonitoringsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
  end

  def new
    @monitoring = Monitoring.new
  end

  def create
    @monitoring = Monitoring.new(monitoring_params)
    if @monitoring.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def lists
  end

  private

  def monitoring_params
    params.require(:monitoring).permit(:fact, :mind, :feel, :body, :behavior).merge(user_id: current_user.id)
  end

end
