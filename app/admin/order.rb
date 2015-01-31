ActiveAdmin.register Order do
  
  controller do
    def permitted_params
      params.permit order: [:title_of_product, :link_of_product_on_psy_site, :price, :payed, :active, :akey]    
    end
  end
  
end
