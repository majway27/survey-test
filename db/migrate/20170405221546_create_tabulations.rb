class CreateTabulations < ActiveRecord::Migration[5.0]
  def change
    create_table :tabulations do |t|
      t.integer :count
      t.references :survey, foreign_key: true
      t.references :question, foreign_key: true
      t.references :option, foreign_key: true

      t.timestamps
    end
  end
end
