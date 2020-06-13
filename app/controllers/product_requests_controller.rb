class ProductRequestsController < InheritedResources::Base
  before_action :authenticate_employee!
  private

  def show
  	redirect_to edit_product_request_path(params[:id])
  end
def product_request_params
  params.require(:product_request).permit(:name, :amount, :supplier_id, :price, :product_code, :employee_id)
end

end
