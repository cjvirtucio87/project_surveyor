class CreateSurveyQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :survey_questions do |t|
      t.references :survey_id, foreign_key: true
      t.references :question_id, foreign_key: true

      t.timestamps
    end
  end
end
