class CreateOpponents < ActiveRecord::Migration
  def change
    create_table :opponents do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
