class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :isbn, length: 13, null: false, default: nil, unique: true
      t.string :title, length: 255, null: false, default: nil
      t.string :author, length: 255, null: false, default: nil
      t.string :publisher, length: 255, null: false, default: nil
      t.timestamps null: false
    end
  end
end
