class CreateMistakes < ActiveRecord::Migration[7.0]
  def change
    create_table :mistakes do |t|
      t.string :title
      t.text :description
      t.text :true_cause
      t.text :prevention_later
      t.text :lesson
      t.boolean :closure
      t.text :achieve_closure
      t.references :mistakeslist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
