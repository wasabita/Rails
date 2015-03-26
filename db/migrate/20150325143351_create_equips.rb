class CreateEquips < ActiveRecord::Migration
  def change
    create_table :equips do |t|
      t.string :name
      t.float :score
      t.references :ship, index: true

      t.timestamps null: false
    end
    add_foreign_key :equips, :ships
  end
end
