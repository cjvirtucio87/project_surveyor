class SurveyQuestion < ApplicationRecord
  belongs_to :survey_id
  belongs_to :question_id
end
