class ProductRequest < ApplicationRecord
  belongs_to :supplier, optional: true
  belongs_to :employee

  validates :name, :amount, :product_code, presence: true
  # before_create :assign_default_supplier

  private
  def assign_default_supplier
  	self.supplier_id = Supplier.first.id
  end
end
