class CreateSources < ActiveRecord::Migration
  def change
    create_table :sources do |t|
      t.string :title
      t.string :authors
      t.text :abstract
      t.string :publisher
      t.string :publish_date
      t.string :keywords
      t.string :doi
      t.integer :page_start
      t.integer :page_end
      t.integer :volume
      t.integer :issue
      t.integer :avg_rating
      t.string :source_status
      t.string :research_questions
      t.string :research_methods
      t.integer :submitter_id
      t.integer :moderator_id
      t.integer :analyst_id

      t.timestamps null: false
    end
  end
end
