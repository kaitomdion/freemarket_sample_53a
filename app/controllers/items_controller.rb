class ItemsController < ApplicationController

  def index
    # @items_ladies = Item.all.order("RAND()").limit(4)
    # @items_ladies = Item.aaaa

    @items_ladies = Item.where(category_id: 1).order("RAND()").limit(4)
    @items_mens = Item.where(category_id: 2).order("RAND()").limit(4)
    @items_kids = Item.all
    @items_cosmetics = Item.all
    @items_chanel = Item.all
    @items_louisvuitton = Item.all
    @items_supreme = Item.all
    @items_nike = Item.all
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

