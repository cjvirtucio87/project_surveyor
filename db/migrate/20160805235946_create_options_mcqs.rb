class CreateOptionsMcqs < ActiveRecord::Migration[5.0]
  def change
    create_table :options_mcqs do |t|
      t.references :options, foreign_key: true
      t.references :mcqs, foreign_key: true

      t.timestamps
    end
  end
end
