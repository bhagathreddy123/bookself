class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :name
      t.float :price
      t.string :category
      t.string :author

      t.timestamps
    end
  end
end
