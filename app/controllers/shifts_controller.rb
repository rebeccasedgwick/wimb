class ShiftsController < ApplicationController
  def update
    @shift = Shift.find(params[:id])
    @shift.update(end_time: params[:end_time])
    redirect_to worker_path(@shift.worker)
  end
end
