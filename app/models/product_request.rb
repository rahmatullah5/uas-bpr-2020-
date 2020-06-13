class ProductRequest < ApplicationRecord
  belongs_to :supplier
  belongs_to :employee
end
