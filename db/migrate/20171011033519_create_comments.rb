class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :comment_body
      t.date :created_at
      t.integer :rating
      t.integer :author_id
      t.integer :doctor_id

      t.timestamps
    end
  end
end
