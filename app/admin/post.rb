ActiveAdmin.register Post do
  
  controller do
    def permitted_params
      params.permit post: [:name, :description, :image, :social_link_fb, :visible]
    end
  end
  
end
