class Option < ApplicationRecord
  has_many :mcqs, through: :option_mcq
end
