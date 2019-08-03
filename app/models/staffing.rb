class Staffing < ApplicationRecord
  belongs_to :court
  belongs_to :worker
  has_many :shifts

  validates_uniqueness_of :worker, conditions: -> { where(active: true) }
end
