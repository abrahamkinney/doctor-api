class AddDisabldToComment < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :disabled, :boolean
  end
end
