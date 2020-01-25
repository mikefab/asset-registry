ActiveAdmin.register Org do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :address, :lat, :lon, :kind, :region, :district, :chiefdom, :section
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :address, :lat, :lon, :kind, :region, :district, :chiefdom, :section]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
