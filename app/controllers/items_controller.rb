class ItemsController < ApplicationController

  def index
    @items_ladies = Item.all.order("RAND()").limit(4)

    # @items_ladies = Item.where(category_id: 1).order("RAND()").limit(4)
    
    # @items_ladies = Item.aaaa
    
    
    @items_mans = Item.all
    @items_kids = Item.all
    @items_cosmetics = Item.all
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
  end

  def new
    @item = Item.new
    # 10.times { @item.images.build }
    @item.images.build
    # @categories = Category.all
    # @parents = Category.all.order("id ASC").limit(13)
    @parents = Category.where(id: 1..13)
  end

  def create
    # binding.pry
    @item = Item.new(item_params)
    unless @item.valid?
      render '/items/new'
    else  
      @item.save
      redirect_to root_path, notice: '商品を出品しました'  
    end
  end

  def search
    # @parents = Category.where(id: 1..13)
    # @childrens = @parents.where(id: params[:id])
    respond_to do |format|
      format.html
      format.json do
        if params[:parent_id]
          @children = Category.find(params[:parent_id]).children
         else
          @grandchildren = Category.find(params[:children_id]).children
        end
      end
    end
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
    params.require(:item).permit(:name, :description, :price, :shipping_region_id, :shipping_status_id, :shipping_day_id, :shipping_method_id,:transaction_id,:saler_id, :shipping_burden_id, :category_id, images_attributes: [:url, :item_id])
  end

end

