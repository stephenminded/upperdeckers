class CreateRosterPlayers < ActiveRecord::Migration
  def change
    create_table :roster_players do |t|
      t.belongs_to :player, index: true
      t.belongs_to :roster, index: true

      t.timestamps null: false
    end
  end
end
