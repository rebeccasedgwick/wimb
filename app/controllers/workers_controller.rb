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

  def edit
    @worker = Worker.find(params[:id])
    @assigned_court_id = @worker.active_staffing&.court_id
  end

  def update
    @worker = Worker.find(params[:id])
    if @worker.update(worker_params)
      if @worker.active_staffing
        @worker.active_staffing.update!(active: false)
      end
      @worker.staffings.create!(court_id: params[:assigned_court_id], active: true)
      redirect_to @worker
      # redirect_to edit_worker_path(@worker)
    else
      render 'edit'
    end
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
