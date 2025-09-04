class CreateBooks < ActiveRecord::Migration[7.2]
  def change
    create_table :books do |t|
      t.string :name
      t.text :description
      t.integer :number_of_pages

      t.timestamps
    end
  end
end
