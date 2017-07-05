class CreateInnings < ActiveRecord::Migration
  def change
    create_table :innings do |t|
      t.references :game, index: true, foreign_key: true
      t.integer :number
      t.integer :top_score
      t.integer :bottom_score

      t.timestamps null: false
    end
  end
end
