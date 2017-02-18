class CreateSelectionTexts < ActiveRecord::Migration[5.0]
  def change
    create_table :selection_texts do |t|
      t.references :question, null: false
      t.string :text1, null: false
      t.string :text2, null: false
      t.timestamps
    end

    add_foreign_key :selection_texts, :questions
  end
end
