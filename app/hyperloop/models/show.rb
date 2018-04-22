class Show < ApplicationRecord
  scope :sorted, -> () { order(:time) }
end
