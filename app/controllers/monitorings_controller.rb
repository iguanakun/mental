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
      redirect_to lists_monitorings_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @monitoring = Monitoring.find(params[:id])
  end

  def lists
    @monitorings = current_user.monitorings
  end

  private

  def monitoring_params
    params.require(:monitoring).permit(:fact, :mind, :feel, :body, :behavior).merge(user_id: current_user.id)
  end

end
