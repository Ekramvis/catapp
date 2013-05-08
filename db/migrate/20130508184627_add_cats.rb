class AddCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.timestamps
      t.integer :age
      t.date :birth_date
      t.string :color
      t.string :name
      t.string :neighborhood
      t.string :sex
    end
  end
end
