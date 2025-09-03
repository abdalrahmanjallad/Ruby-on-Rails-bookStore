class createauthors < activerecord::migration[7.2]
  def change
    create_table :authors do |t|
      t.string :name
      t.integer :age
      t.string :latest_book

      t.timestamps
    end
  end
end
