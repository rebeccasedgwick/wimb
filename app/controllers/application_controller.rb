class ApplicationController < ActionController::Base

  around_action :set_default_time_zone

  def set_default_time_zone(&block)
    Time.use_zone("London", &block)
  end

end
