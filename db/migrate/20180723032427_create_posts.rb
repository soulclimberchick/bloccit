class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.string :rails
      t.string :generate
      t.string :model
      t.string :Post
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
