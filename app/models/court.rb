class Court < ApplicationRecord
  has_many :staffings
  has_many :workers, through: :staffings
end
