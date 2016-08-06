class CreateNumberRanges < ActiveRecord::Migration[5.0]
  def change
    create_table :number_ranges do |t|
      t.integer :min
      t.integer :max

      t.timestamps
    end
  end
end
