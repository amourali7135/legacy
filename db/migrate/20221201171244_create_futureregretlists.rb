class CreateFutureregretlists < ActiveRecord::Migration[7.0]
  def change
    create_table :futureregretlists do |t|
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
