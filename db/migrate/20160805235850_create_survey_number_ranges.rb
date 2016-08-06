class CreateSurveyNumberRanges < ActiveRecord::Migration[5.0]
  def change
    create_table :survey_number_ranges do |t|
      t.references :surveys, foreign_key: true
      t.references :number_range, foreign_key: true

      t.timestamps
    end
  end
end
