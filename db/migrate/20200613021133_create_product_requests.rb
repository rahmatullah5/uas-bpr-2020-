class CreateProductRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :product_requests do |t|
      t.string :name
      t.integer :amount
      t.references :supplier, null: false, foreign_key: true
      t.float :price
      t.string :product_code
      t.references :employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
