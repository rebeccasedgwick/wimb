class CourtsController < ApplicationController
  def index
    @courts = Court.all.order(:id)
  end

  def show
    @court = Court.find(params[:id])
  end

  def new
  end

  def create
    @court = Court.new(court_params)
    @court.save
    redirect_to @court
  end

  private
    def court_params
      params.require(:court).permit(:name, :staff_total)
    end
end
