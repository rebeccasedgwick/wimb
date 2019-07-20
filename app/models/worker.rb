class Worker < ApplicationRecord
  has_many :staffings
  has_many :courts, through: :staffings
  validates :name, presence: true
end
