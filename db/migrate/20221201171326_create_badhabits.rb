class CreateBadhabits < ActiveRecord::Migration[7.0]
  def change
    create_table :badhabits do |t|
      t.string :title
      t.text :description
      t.text :reason
      t.text :initializer
      t.string :priority
      t.references :badhabitlist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
