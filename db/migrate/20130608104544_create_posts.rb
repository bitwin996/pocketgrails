class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.string :content
      t.string :reference
      t.integer :theme_id
      t.integer :user_id

      t.timestamps
    end
    add_index :posts, [:user_id, :created_at]
    add_index :posts, [:theme_id, :created_at]
  end
end
