class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :source_id
      t.integer :user_id
      t.integer :rating
      t.string :comment

      t.timestamps null: false
    end
  end
end
