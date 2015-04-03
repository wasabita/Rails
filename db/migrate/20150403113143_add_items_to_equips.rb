class AddItemsToEquips < ActiveRecord::Migration
  def change
    add_column :equips, :rate, :float,
    add_column :equips, :eq_datum_id, :integer
  end
end
