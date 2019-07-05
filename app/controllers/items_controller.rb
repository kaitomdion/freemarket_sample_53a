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
  end

  def new
  end

  def confirm
  end

  def end
  end

end

