class CreateProductRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :product_requests do |t|
      t.string :name
      t.integer :amount
      t.references :supplier, foreign_key: true
      t.float :price
      t.string :product_code
      t.references :employee#, foreign_key: true
      t.boolean :approved, default: false
      t.timestamps
    end
  end
end
