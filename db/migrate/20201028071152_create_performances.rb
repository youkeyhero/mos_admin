class CreatePerformances < ActiveRecord::Migration[5.0]
  def change
    create_table :performances do |t|
      t.string :business_cd
      t.integer :plan
      t.integer :performance
      t.integer :user_id
      t.string :date

      t.timestamps
    end
  end
end
