class CreateReadings < ActiveRecord::Migration
  def change
    create_table :readings do |t|
      t.references :book, index: true, foreign_key: true, null: false
      t.references :user, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
