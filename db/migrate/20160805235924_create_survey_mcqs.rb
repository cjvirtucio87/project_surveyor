class CreateSurveyMcqs < ActiveRecord::Migration[5.0]
  def change
    create_table :survey_mcqs do |t|
      t.references :surveys, foreign_key: true
      t.references :mcqs, foreign_key: true

      t.timestamps
    end
  end
end
