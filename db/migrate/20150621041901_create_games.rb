class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.belongs_to :game_location, index: true
      t.belongs_to :team,          index: true
      t.belongs_to :opponent,      index: true

      t.datetime :game_date
      t.string   :note

      t.timestamps null: false
    end
  end
end
