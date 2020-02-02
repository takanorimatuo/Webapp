class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.string              :product
      t.text                :text
      t.text                :image

      t.timestamps          null: true
    end
  end
end
