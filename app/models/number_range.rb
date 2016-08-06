class NumberRange < ApplicationRecord
  has_many :surveys, through: :survey_number_range
end
