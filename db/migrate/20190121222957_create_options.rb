class CreateOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :options do |t|
      t.string :content
      t.boolean :correct
      t.references :question, foreign_key: true
    end
  end
end
