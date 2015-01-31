class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string   "name", default: '' 
      t.text     "description", default: ''       
      t.string   "image", default: '' 
      t.string   "social_link_fb", default: '' 
      t.boolean  "visible",     default: true    

      t.timestamps
    end
  end
end
