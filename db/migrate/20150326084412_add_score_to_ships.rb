class AddScoreToShips < ActiveRecord::Migration
  def change
    add_column :ships, :score, :integer
  end
end
