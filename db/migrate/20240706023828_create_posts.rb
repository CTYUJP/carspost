class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.references :user
      t.string :text, null: false
      t.timestamps
    end
  end
end
