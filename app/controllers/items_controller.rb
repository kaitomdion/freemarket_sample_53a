class ItemsController < ApplicationController

  def index
  end

  def show
    @item = Item.find(params[:id])
    @image = Image.find(params[:id])
    # binding.pry
  end

  def new
    @item = Item.new
    # 10.times { @item.images.build }
    @item.images.build
    @categories = Category.all
  end

  def create
    # binding.pry
    Item.create(item_params)
    redirect_to root_path, notice: '商品を出品しました'
  end

  def confirm
  end

  def end
  end


  def destroy
    item = Item.find(params[:id])
    item.destroy
  end

  
  private
  def item_params
    params.require(:item).permit(:name, :description, :price, :shipping_region_id, :shipping_status_id, :shipping_day_id, :shipping_method_id,:transaction_id,:saler_id, :shipping_burden_id, images_attributes: [:url, :item_id])
  end

end

