class Ship < ActiveRecord::Base
	has_many :equips
	validates :name,
	presence: {message: "入力してください" }
end
