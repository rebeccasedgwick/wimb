class Shift < ApplicationRecord
  belongs_to :worker
  belongs_to :staffing

  before_validation :assign_worker, on: :create
  before_save :assign_duration

  def assign_worker
    self.worker = staffing.worker
  end

  def assign_duration
    return if end_time.blank?
    return unless end_time_changed? || start_time_changed?
    self.duration = end_time - start_time
  end

  def formatted_duration
    hours = duration / 3600
    hour_remainder = duration % 3600
    minutes = hour_remainder / 60
    seconds = hour_remainder % 60
    [hours, minutes, seconds].map do |number|
      "%02d" % number
    end.join(":")
  end
end
