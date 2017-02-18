class CreateBodyTexts < ActiveRecord::Migration[5.0]
  def change
    create_table :body_texts do |t|
      t.references :question, null: false
      t.string :text, null: false
      t.timestamps
    end

    add_foreign_key :body_texts, :questions
  end
end
