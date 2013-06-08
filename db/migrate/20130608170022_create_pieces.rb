class CreatePieces < ActiveRecord::Migration
  def change
    create_table :pieces do |t|
      t.string :name
      t.string :content
      t.string :reference
      t.integer :theme_id
      t.integer :user_id

      t.timestamps
    end
  end
end
