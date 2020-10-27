class CreateBusinesses < ActiveRecord::Migration[5.0]
  def change
    create_table :businesses do |t|
      t.string :cd
      t.string :category
      t.string :name

      t.timestamps
    end
  end
end
