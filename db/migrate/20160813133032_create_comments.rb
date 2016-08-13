class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.integer :post_id
      t.text :body
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :comments, :post_id
  end
end
