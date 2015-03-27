class Equip < ActiveRecord::Base
  belongs_to :ship
  validates :name, :score, presence: true
end
