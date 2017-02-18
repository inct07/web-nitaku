class CreateBodyImages < ActiveRecord::Migration[5.0]
  def change
    create_table :body_images do |t|
      t.references :question, null: false
      t.string :image_path, null: false
      t.timestamps
    end

    add_foreign_key :body_images, :questions
  end
end
