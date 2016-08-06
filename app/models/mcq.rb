class Mcq < ApplicationRecord
  has_many :surveys, through: :survey_mcq
end
