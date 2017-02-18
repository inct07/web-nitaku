class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.integer :body_type, null: false, limit: 1
      t.integer :selection_type, null: false, limit: 1
      t.timestamps
    end
  end
end
