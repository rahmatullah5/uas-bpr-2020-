ActiveAdmin.register Supplier do
    permit_params :name, :telephone, :email, :address
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :telephone, :email, :address
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :telephone, :email, :address]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  
end
