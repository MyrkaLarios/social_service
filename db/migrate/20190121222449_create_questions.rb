class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :content
      t.integer :value
      t.references :coordinator, foreign_key: true
    end
  end
end
