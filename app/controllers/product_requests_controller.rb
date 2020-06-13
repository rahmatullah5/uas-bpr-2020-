class ProductRequestsController < InheritedResources::Base
  before_action :authenticate_employee!
  private

    def product_request_params
      params.require(:product_request).permit(:name, :amount, :supplier_id, :price, :product_code, :user_id)
    end

end
