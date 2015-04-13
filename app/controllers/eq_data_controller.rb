class EqDataController < ApplicationController
	before_action :set_eq_datum,only:[:show,:edit,:update,:destroy]
	def index
		@data=EqDatum.all
	end
	def new
		@eq_datum=EqDatum.new
	end

	def create
		@eq_datum=EqDatum.new(eq_datum_params)
		if @eq_datum.save
			redirect_to eq_data_path
		else
			render "new"
		end
	end
	def edit
	end

	def update
		
		@eq_datum.update(eq_datum_params)
		redirect_to eq_data_path
	end

	def destroy
		@eq_datum.destroy
		redirect_to eq_data_path
	end

	private
	def set_eq_datum
		@eq_datum=EqDatum.find(params[:id])
	end
	def eq_datum_params
		params.require(:eq_datum).permit(:name , :score, :rate)
	end
end
