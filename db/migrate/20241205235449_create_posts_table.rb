class CreatePostsTable < ActiveRecord::Migration[8.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.timestamps
    end
  end
end