class CreateEvidences < ActiveRecord::Migration
  def change
    create_table :evidences do |t|
      t.integer :source_id
      t.string :se_method
      t.string :se_methodology
      t.string :benefit
      t.string :result
      t.string :participants
      t.string :metric
      t.string :context

      t.timestamps null: false
    end
  end
end
