class Worker < ApplicationRecord
  has_many :staffings
  has_one :active_staffing, -> { where(active: true) }, class_name: "Staffing"
  has_many :courts, through: :staffings
  has_many :shifts, through: :staffings
  validates :name, presence: true
end
