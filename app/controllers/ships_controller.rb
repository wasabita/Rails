class ShipsController < ApplicationController
	before_action :set_ship,only:[:show,:edit,:update,:destroy]

	def index
		@ships=Ship.all
	end

	def show
		@str=EqDatum.all
	end

	def new
		@ship=Ship.new
	end

	def create
	#	@ship=Ship.create(params[:ship])
		@ship=Ship.new(ship_params)
		if @ship.save
			redirect_to ships_path
		else
			render "new"
		end
	end
	def edit
	end
	def update
		@ship.update(ship_params)
		redirect_to ships_path
	end
	def destroy
		@ship.destroy
		redirect_to ships_path
	end
	
	private
	def ship_params
		params.require(:ship).permit(:name , :score)
	end
	def set_ship
		@ship=Ship.find(params[:id])
	end
end
