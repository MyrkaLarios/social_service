class CreateUnits < ActiveRecord::Migration[5.2]
  def change
    create_table :units do |t|
      t.integer :unit
      t.string :name
      t.references :question, foreign_key: true
    end
  end
end
