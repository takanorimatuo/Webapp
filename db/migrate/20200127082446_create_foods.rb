class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.string              :product
      t.text                :text
      t.text                :image
      t.integer             :price
      t.timestamps          null: true
      
    end
  end
end
