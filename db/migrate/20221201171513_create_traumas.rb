class CreateTraumas < ActiveRecord::Migration[7.0]
  def change
    create_table :traumas do |t|
      t.string :title
      t.text :description
      t.string :priority
      t.text :effects
      t.text :obstacles
      t.text :initializer
      t.references :traumalist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
