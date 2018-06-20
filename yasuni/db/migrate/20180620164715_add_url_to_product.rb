class AddUrlToProduct < ActiveRecord::Migration[5.2]


  def change
      change_table :products do |t|
       t.string   :url

     end
   end
  end
