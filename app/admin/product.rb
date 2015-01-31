ActiveAdmin.register Product do
  
  controller do
    def permitted_params
      params.permit product: [:name, :description, :image, :price, :social_link_fb, :get_link, :visible]      
    end
  end
  
end
