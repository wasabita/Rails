class EqDatum < ActiveRecord::Base
	def view_name_and_scores
		self.name+"( "+self.score.to_s+" => "+(self.score*self.rate).round(2).to_s+" )"
	end

end
