class ShipsController < ApplicationController
	before_action :set_ship,only:[:show,:edit,:update,:destroy]

	def index
		@ships=Ship.all
	end

	def show
		teisatuki_rate=[1.66,2.00,1.78]
		dentan_rate=[1.00,0.99]
		@teisatuki=[]
		@dentan=[]
		@other=[]
		EqDatum.all.each do |eq|
			case eq.rate
			when *teisatuki_rate then @teisatuki << eq
			when *dentan_rate then @dentan << eq
			else @other << eq
			end
		end
		puts "**********************************"
		puts EqDatum.all.class
		puts "teisatuki"
		@teisatuki.each do |eq|
			puts "#{eq.name} : #{eq.rate}"
		end
		puts "dentan"
		@dentan.each do |eq|
			puts "#{eq.name} : #{eq.rate}"
		end
		puts "other"
		@other.each do |eq|
			puts "#{eq.name} : #{eq.rate}"
		end
		puts "**********************************"

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
