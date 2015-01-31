ActiveAdmin.register Consult do
  
  controller do
    def permitted_params
      params.permit consult: [:datetime, :price, :payed, :active, :akey]    
    end
  end
  
end
