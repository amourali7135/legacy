class CreatePurposes < ActiveRecord::Migration[7.0]
  def change
    create_table :purposes do |t|
      t.text :description
      t.text :initializer
      t.text :obstacles
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
