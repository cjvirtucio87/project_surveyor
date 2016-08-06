class SurveyMcq < ApplicationRecord
  belongs_to :surveys
  belongs_to :mcqs
end
