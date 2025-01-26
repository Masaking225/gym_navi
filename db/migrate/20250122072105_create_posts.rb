class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.string :title
      t.text :body
      t.string :shop_name
      t.string :shop_address
      t.integer :evaluation
      t.timestamps
    end
  end
end
