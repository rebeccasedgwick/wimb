class Staffing < ApplicationRecord
  belongs_to :court
  belongs_to :worker
end
