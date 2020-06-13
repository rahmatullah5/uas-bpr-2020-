json.extract! product_request, :id, :name, :amount, :supplier_id, :price, :product_code, :user_id, :created_at, :updated_at
json.url product_request_url(product_request, format: :json)
