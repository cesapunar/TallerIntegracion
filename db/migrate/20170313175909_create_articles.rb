class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :down
      t.text :body
      t.string :link
      t.datetime :date
      t.integer :comments_count

      t.timestamps
    end
  end
end
