class ItemsController < ApplicationController

	before_filter :find_item, only: [:edit, :update, :destroy]
	before_filter :check_if_admin, only: [:edit, :destroy, :new, :create, :update]


	def index
		@items = Item.all
	end

	def show
		if Item.exists?(params[:id])
			@item = Item.find(params[:id])
		else
			render text: "Not found"
		end
	end

	def new
		@item = Item.new
	end

	def create
		@item = Item.create(item_params)
		if !@item.errors.empty?
			render "new"
		else
			redirect_to item_path(@item)
		end
	end

	def edit
	end

	def update

		@item.update_attributes(item_params)
		if !@item.errors.empty?
			render "edit"
		else 
			redirect_to action: "index"
		end
	end

	def destroy

		@item.destroy
		redirect_to action: "index"

	end


	private
		  def item_params
    		params.require(:item).permit(:price, :real, :weight, :desription, :name)
  		  end

  		  def find_item
  		  	@item = Item.find(params[:id])
  		  end

  		  def check_if_admin
  		  	render text: "Access denied", status: 403 unless params[:admin]
  		  end
end
