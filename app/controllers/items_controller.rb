class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit ,:update ,:editprev ,:destroy]

  def index
    @items_ladies = Item.ladies
    @items_mens = Item.mens
    @items_kids = Item.kids
    @items_cosmetics = Item.cosmetics
    @items_chanel = Item.chanel
    @items_louisvuitton = Item.louisvuitton
    @items_supreme = Item.supreme
    @items_nike = Item.nike
  end

  def show

    @images = @item.images
    @brand =Brand.find(@item.brand_id)
    @category = Category.find(@item.category_id)
    @previtem = Item.where("id < ?", @item.id).order("id DESC").first
    @nextitem = Item.where("id > ?", @item.id).order("id ASC").first
    @childitem =Item.where(category_id: @item.category_id).where.not(id: @item.id).order(Arel.sql("RAND()")).limit(6)
    @useritem = Item.where(saler_id: @item.saler_id).where.not(id: @item.id).order(Arel.sql("RAND()")).limit(6)
    @user = User.find(@item.saler_id)
  end

  def new
    @item = Item.new
    @item.images.build
    @parents = Category.where(id: 1..13)
  end

  def create
    @item = Item.new(item_params)
    unless @item.valid?
      render '/items/new'
    else  
      @item.save
      redirect_to root_path, notice: '商品を出品しました'  
    end
  end

  def edit
    @item = Item.find(params[:id])
    @category = Category.find_by(id: @item.category_id)
    @brand = Brand.find_by(id: @item.brand_id)
    @image = Image.where(item_id: @item.id)
    # respond_to do |format|
    #   format.html
    #   format.json do
    #       @grandchildren = @category.id
    #       @children = @category.parent.id
    #       @parent = @category.parent.parent
    #       @child = @category.parent.parent.children.ids
    #       @grand =  @category.parent.children
    #       # @a = @child.index
    #   end
    # end
  end

  def update
    @item.update(item_params) 
    # if @item.update
     redirect_to root_path(@item), notice: 'itemを編集しました'
    # else
    #   render :edit
    # end
  end


  def search
    @items = Item.search(params[:search])
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
   
    @item = Item.find(params[:id])
    #  binding.pry
  end

  def end
  end
  
  def editprev
    @images = @item.images
    @category = Category.find(@item.category_id)
    @user = User.find(@item.saler_id)
  end


  def destroy
    @item.destroy
    redirect_to user_path(current_user.id)
  end

  def set_item
    @item = Item.find(params[:id])
  end

  private
  def item_params
    @params_items = params.require(:item).permit(:name, :description, :price, :brand_id, :shipping_region_id, :shipping_status_id, :shipping_day_id, :shipping_method_id,:transaction_id,:saler_id, :shipping_burden_id, :category_id, images_attributes: [:url, :id]).merge(saler_id: current_user.id,item_status_id: 1)
  end
end
