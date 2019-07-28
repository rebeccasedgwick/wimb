class Court < ApplicationRecord
  has_many :staffings
  has_many :active_staffings, -> { where(active: true) }, class_name: "Staffing"
  has_many :workers, through: :staffings
  has_many :active_workers, through: :active_staffings, class_name: "Worker", source: :worker
end
