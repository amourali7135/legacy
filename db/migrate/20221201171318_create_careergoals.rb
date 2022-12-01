class CreateCareergoals < ActiveRecord::Migration[7.0]
  def change
    create_table :careergoals do |t|
      t.string :title
      t.text :description
      t.text :obstacle
      t.text :initializer
      t.string :priority
      t.references :careergoallist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
