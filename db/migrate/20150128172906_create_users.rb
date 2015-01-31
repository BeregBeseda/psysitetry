class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string   "name", default: ""          
      t.string   "email", default: ""
      t.string   "password", default: ""
      t.string   "key_word", default: ""      
      t.boolean  "wants_news", default: false                      
      t.boolean  "active", default: true                      
      t.string   "akey", default: ""            

      t.timestamps
    end
  end
end
