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
    "%02dh %02dm" % [duration/3600, duration/60%60, duration%60]
  end
end
