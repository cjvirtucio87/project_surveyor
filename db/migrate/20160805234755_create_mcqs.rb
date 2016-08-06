class CreateMcqs < ActiveRecord::Migration[5.0]
  def change
    create_table :mcqs do |t|
      t.boolean :checkbox

      t.timestamps
    end
  end
end
