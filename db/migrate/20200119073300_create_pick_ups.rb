class CreatePickUps < ActiveRecord::Migration[5.2]
  def change
    create_table :pick_ups do |t|
      t.string              :title
      t.text                :text
      t.text                :image
      t.timestamps          null: true
    end
  end
end
