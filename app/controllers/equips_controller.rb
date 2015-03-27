class EquipsController < ApplicationController
	def create
		@ship=Ship.find(params[:ship_id])
		@equip=@ship.equips.new(equip_params)
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
		params.require(:equip).permit(:name , :score)
	end
end
