class CreateArticlesUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :articles_users do |t|
      t.integer :article_id, null: false
      t.integer :user_id, null: false

      t.timestamps
    end
  end
end
