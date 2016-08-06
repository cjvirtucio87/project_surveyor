class Survey < ApplicationRecord
  has_many :mcqs, through: :survey_mcq
  has_many :number_ranges, through: :survey_number_range
end
