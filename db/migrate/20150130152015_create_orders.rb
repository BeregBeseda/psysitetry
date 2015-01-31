class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string "title_of_product", default: ""  
      t.string "link_of_product_on_psy_site", default: ""        
      t.decimal  "price", limit: 5
      t.boolean  "payed", default: false  
      t.boolean  "active", default: true                      
      t.string   "akey", default: ""                        

      t.timestamps
    end
    add_reference :orders, :user, index: true              
  end
end
