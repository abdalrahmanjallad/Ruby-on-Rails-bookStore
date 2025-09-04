class RemoveAutherFromBooks < ActiveRecord::Migration[7.2]
  def change
    remove_column :books, :auther, :string
  end
end
