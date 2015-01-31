class CreateAaas < ActiveRecord::Migration
  def change
    create_table :aaas do |t|

      t.timestamps
    end
  end
end
