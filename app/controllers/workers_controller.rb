class WorkersController < ApplicationController
  def index
    @workers = Worker.all.order(:id)
  end

  def show
    @worker = Worker.find(params[:id])
  end

  def new
    @worker = Worker.new
  end

  def create
    @worker = Worker.new(worker_params)
    if @worker.save
      redirect_to @worker
    else
      render 'new'
    end
  end

  private
    def worker_params
      params.require(:worker).permit(:name)
    end
end
