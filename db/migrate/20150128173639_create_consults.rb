class CreateConsults < ActiveRecord::Migration
  def change
    create_table :consults do |t|   
      t.datetime "datetime"  
      t.decimal  "price", limit: 5
      t.boolean  "payed", default: false  
      t.boolean  "active", default: true                      
      t.string   "akey", default: ""                  

      t.timestamps
    end
    add_reference :consults, :user, index: true       
  end
end
