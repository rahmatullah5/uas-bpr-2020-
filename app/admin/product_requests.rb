ActiveAdmin.register ProductRequest do
   actions :index, :show, :edit, :update
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :amount, :supplier_id, :price, :product_code, :employee_id, :approved
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :amount, :supplier_id, :price, :product_code, :employee_id, :approved]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
  form do |f|
    f.inputs do
      # f.input :name, :input_html => { disabled: true }
      # f.input :amount, :input_html => { disabled: true }
      # f.input :product_code, :input_html => { disabled: true }
      # f.input :employee_id, :input_html => { disabled: true }
      f.input :price
      f.input :approved
      f.input :supplier_id, :as => :select, :collection => Supplier.all.map{|u| [u.name, u.id]}
    end
    f.actions
  end
end
