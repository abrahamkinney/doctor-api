class CreateDoctor < ActiveRecord::Migration[5.1]
  def change
    create_table :doctors do |t|
      t.string :name
      t.text :address
      t.float :lat
      t.float :lng
      t.integer :group_id

      t.timestamps
    end
  end
end
