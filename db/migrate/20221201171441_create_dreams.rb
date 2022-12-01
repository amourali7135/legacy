class CreateDreams < ActiveRecord::Migration[7.0]
  def change
    create_table :dreams do |t|
      t.string :title
      t.text :description
      t.text :obstacles
      t.text :initializer
      t.string :priority
      t.references :dreamlist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
