ActiveAdmin.register Menu do
  
  controller do
    def permitted_params
      params.permit menu: [:name, :description]
    end
  end
  
end
