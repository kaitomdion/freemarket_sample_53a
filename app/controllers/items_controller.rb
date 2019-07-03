class ItemsController < ApplicationController

  def index
  end

  def show
  end

  def new
    @item = Item.new
    10.times { @item.images.build }
    @categories = Category.all
  end

  def create
    # item = Item.new(item_params)
    # item.save
    Item.create(item_params)
    redirect_to root_path, notice: '商品を出品しました'
  end

  def confirm
  end

  def end
  end
  
  private
  def item_params
    params.require(:item).permit(:name, :description, :price, :shipping_region_id, :shipping_status_id, :shipping_day_id, :shipping_method_id,:transaction_id, :buyer_id, :saler_id, :shipping_burden_id, category_ids: [], images_attributes: [:url, :item_id])
  end

  # def image_params
  #   params.require(:item).require(:images_attributes).require("0").permit(:url).merge(item_id: Item.all.last().id, user_id: 1)
  # end
end

