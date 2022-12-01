class CreateCurrentlegacydisconnects < ActiveRecord::Migration[7.0]
  def change
    create_table :currentlegacydisconnects do |t|
      t.boolean :pleased
      t.text :missing
      t.references :currentlegacy, null: false, foreign_key: true

      t.timestamps
    end
  end
end
