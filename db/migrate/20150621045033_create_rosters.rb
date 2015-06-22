class CreateRosters < ActiveRecord::Migration
  def change
    create_table :rosters do |t|
      t.belongs_to :player, index: true
      t.belongs_to :team, index: true

      t.string :season

      t.timestamps null: false
    end
  end
end
