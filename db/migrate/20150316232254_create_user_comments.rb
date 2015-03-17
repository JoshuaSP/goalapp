class CreateUserComments < ActiveRecord::Migration
  def change
    create_table :user_comments do |t|
      t.references :user, index: true
      t.string :body
      t.integer :author_id

      t.timestamps null: false
    end
    add_foreign_key :user_comments, :users
  end
end
