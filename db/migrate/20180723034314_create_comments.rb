class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :body
      t.references :post, foreign_key: true
      t.string :invoke
      t.string :acitve_record
      t.string :create
      t.string :generate
      t.string :model
      t.string :Comment

      t.timestamps
    end
  end
end
