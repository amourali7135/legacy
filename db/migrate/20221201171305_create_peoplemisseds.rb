class CreatePeoplemisseds < ActiveRecord::Migration[7.0]
  def change
    create_table :peoplemisseds do |t|
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
