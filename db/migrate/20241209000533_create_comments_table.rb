class CreateCommentsTable < ActiveRecord::Migration[8.0]
  def change
    create_table :comments do |t|
      t.references :posts
      t.text :comment
      t.timestamps
    end
  end
end
