class Movie < ApplicationRecord
  validates :title, :year_released, presence: true
end
