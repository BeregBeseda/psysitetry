ActiveAdmin.register User do
  
  controller do
    def permitted_params
      params.permit user: [:name, :email, :password, :key_word, :wants_news, :active, :akey]           
    end
  end
  
end
