class Todo < ApplicationRecord
  scope :sorted,    -> () { order(:title) }
end
