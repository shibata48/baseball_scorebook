class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.references :team_bat_first, index: true
      t.references :team_field_first, index: true

      t.timestamps null: false
    end
    add_foreign_key :games, :teams, column: :team_bat_first
    add_foreign_key :games, :teams, column: :team_field_first
  end
end
