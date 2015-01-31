class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string   "name", default: ''  
      t.text     "description", default: ''       
      t.string   "image", default: ''        
      t.datetime "datetime"
      t.decimal  "price", limit: 5      
      t.string   "social_link_fb", default: ''   
      t.string   "get_link", default: '' 
      t.boolean  "visible", default: true    

      t.timestamps
    end
  end
end
