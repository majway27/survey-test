class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.integer :version
      t.string :surveyname
      t.integer :question_1_key
      t.string :question_1_text
      t.integer :question_2_key
      t.string :question_2_text
      t.integer :question_3_key
      t.string :question_3_text

      t.timestamps
    end
  end
end
