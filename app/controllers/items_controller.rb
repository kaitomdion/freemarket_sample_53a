class ItemsController < ApplicationController

  def index
    # @items_ladies = Item.all.order("RAND()").limit(4)
    # @items_ladies = Item.where(category_id: 1).order("RAND()").limit(4)
    @items_ladies = Item.ladies
    @items_mens = Item.mens
    @items_kids = Item.kids
    @items_cosmetics = Item.cosmetics
    @items_chanel = Item.all
    @items_louisvuitton = Item.all
    @items_supreme = Item.all
    @items_nike = Item.all
  end

  def show
    @item = Item.find(params[:id])
    @category = Category.find_by(id: @item.category_id)
    # @image = Image.find(params[:id])
    # binding.pry
    @previtem = Item.where("id < ?", @item.id).order("id DESC").first
    @nextitem = Item.where("id > ?", @item.id).order("id ASC").first
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
