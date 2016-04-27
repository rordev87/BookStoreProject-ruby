class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.integer :author_id
      t.text :description
      t.float :price
      t.string :format
      t.integer :availability

      t.timestamps null: false
    end
  end
end
