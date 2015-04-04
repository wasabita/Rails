class EquipsController < ApplicationController
	def create
		@ship=Ship.find(params[:ship_id])
		@eq_datum=EqDatum.find(equip_params[:eq_datum_id])
		@equip=@ship.equips.new(name: @eq_datum.name, score: @eq_datum.score, rate: @eq_datum.rate)
		@equip.save
		redirect_to ship_path(@ship.id)
	end
	def destroy
		@equip=Equip.find(params[:id])
		@equip.destroy
		redirect_to ship_path(params[:ship_id])
	end

	private
	def equip_params
		params.require(:equip).permit(:eq_datum_id)
	end
end
