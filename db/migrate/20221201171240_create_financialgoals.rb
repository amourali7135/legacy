class CreateFinancialgoals < ActiveRecord::Migration[7.0]
  def change
    create_table :financialgoals do |t|
      t.string :title
      t.text :description
      t.text :obstacles
      t.text :initializer
      t.string :priority
      t.references :financialgoallist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
