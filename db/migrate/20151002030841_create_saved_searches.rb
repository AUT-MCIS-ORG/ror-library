class CreateSavedSearches < ActiveRecord::Migration
  def change
    create_table :saved_searches do |t|
      t.integer :user_id
      t.string :search_name
      t.string :search_values

      t.timestamps null: false
    end
  end
end
