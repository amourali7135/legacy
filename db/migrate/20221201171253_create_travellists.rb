class CreateTravellists < ActiveRecord::Migration[7.0]
  def change
    create_table :travellists do |t|
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end