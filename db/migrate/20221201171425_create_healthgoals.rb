class CreateHealthgoals < ActiveRecord::Migration[7.0]
  def change
    create_table :healthgoals do |t|
      t.string :title
      t.text :description
      t.text :obstacles
      t.text :initializer
      t.references :healthgoallist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
