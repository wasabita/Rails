class CreateEqData < ActiveRecord::Migration
  def change
    create_table :eq_data do |t|
      t.string :name
      t.integer :score
      t.float :rate

      t.timestamps null: false
    end
  end
end
