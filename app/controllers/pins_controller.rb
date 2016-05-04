class PinsController < ApplicationController
	
	
	def index
		@pins = Pin.all
		@pin = Pin.new
  end

	def new
		@pin = Pin.new
	end

	def create
		@pin = Pin.new(pins_params)
		@pin.update_attribute("user", current_user)
		@pin.save!
		@pins = Pin.all 
		render :index
	end

  def show
	 @pin = Pin.find(params[:id])
  end

  def edit
  	@pin = Pin.find(params[:id])
	end

	def destroy
		@pin = Pin.find(params[:id])
		@pin.destroy
		redirect_to action:'index'
	end

	def update
    @pin = Pin.find(params[:id])
    redirect_to action: 'index'
	end

	private

	  def pins_params
			params.require(:pin).permit(:title, :description, :image)
		end
end