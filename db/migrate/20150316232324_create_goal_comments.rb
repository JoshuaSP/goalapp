class CreateGoalComments < ActiveRecord::Migration
  def change
    create_table :goal_comments do |t|
      t.references :goal, index: true
      t.string :body
      t.integer :author_id

      t.timestamps null: false
    end
    add_foreign_key :goal_comments, :goals
  end
end
