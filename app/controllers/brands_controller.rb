class BrandsController < ApplicationController
  def index 
    @brands = Brand.where('name LIKE(?)', "%#{params[:keyword]}%")
    respond_to do |format|
      format.json
    end
  end

 
end
