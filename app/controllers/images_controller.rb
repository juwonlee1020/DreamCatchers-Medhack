class ImagesController < ApplicationController

	def index
		if params[:department].present?
			@images = Image.all
			@images = @images.where(:report => nil)
			@images = Image.where(department: params["department"])
			@images = @images.order("priority DESC")

		else
			@images = Image.all
			@images = @images.where(:report => nil)
			@images = @images.order("priority DESC")
		end
	end

	def maps
	end
	
	def check
		@images = Image.all
		@images = @images.where.not(:report => (nil))
		@images = @images.order("priority DESC")
	end

	def mismatch
		@images = Image.all
		@images = @images.where.not(:report => (nil))
		@images = @images.where.not(:abnormality_doctor => :abnormality_machine)
		@images = @images.order("priority DESC")
	end



	def show
		@image = Image.find(params[:id])
	end

	def new
		@image = Image.new
	end

	def create
		@image = Image.new(image_params)
		if @image.save
			redirect_to action: 'index'

		end
	end

	def edit
		@image = Image.find(params[:id])
	end


	def update
		@image = Image.find(params[:id])
		if @image.update(image_params)
			redirect_to action: 'index'
		else
			render 'edit'
		end
	end

	def destroy
		@image = Image.find(params[:id])
		@doc.destroy
		redirect_to image_path
	end
		

	def image_params
		params.require(:image).permit(:name, :department, :report, :abnormality_doctor, :date, :priority, :abnormality_machine, :date_reported)
	end 
end
