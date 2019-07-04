class ItemsController < ApplicationController

  def index
  end

  def show
    @item = Item.find(params[:id])
    @image = Image.find(params[:id])
  end

  def new
  end

  def confirm
  end

  def end
  end

  def destroy
    # item = Item.find(params[:id])
    # item.destroy
  end

end
