class BrandsController < ApplicationController
  def index 
    @brands = Brand.where('name LIKE(?)', "%#{params[:keyword]}%")
    respond_to do |format|
      format.json
    end
  end

  def show 
    @parents = Category.all.order("id ASC").limit(13)
    @brand= Brand.find(params[:id])
    @items = Item.where(brand_id: @brand.id)
  end

 
end
