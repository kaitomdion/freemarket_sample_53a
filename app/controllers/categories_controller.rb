class CategoriesController < ApplicationController
  def show
    @parents = Category.all.order("id ASC").limit(13)
    @category= Category.find(params[:id])
    categoryIds = get_category(@category)
    @items = Item.where(category_id: categoryIds)
    
  end

  private
  def get_category(category)
    if category.indirect_ids.present?
      categoryIds = category.indirect_ids
    elsif category.children.present?
      categoryIds = category.children
    else
      categoryIds = category
    end
    return categoryIds
  end
end