class CreateGameLocations < ActiveRecord::Migration
  def change
    create_table :game_locations do |t|
      t.string :name, null: false
      t.string :location, null: false
      t.string :note

      t.timestamps null: false
    end
  end
end
