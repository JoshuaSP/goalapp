class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commentable_type
      t.integer :commentable_id
      t.string :body
      t.integer :author_id

      t.timestamps null: false
    end
  end
end
