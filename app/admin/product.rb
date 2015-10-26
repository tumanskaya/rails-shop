ActiveAdmin.register Product do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

  permit_params :category_id, :title, :description, :price

  index do
    selectable_column
    column :id
    column :title do |product|
      link_to product.title, admin_product_path(product)
    end
    column :price
    actions
  end
end
