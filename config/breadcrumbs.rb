crumb :root do
  link "Home", root_path
end

crumb :item do |item|
  link "#{item.name}", item_path(item)
  parent :root
end

crumb :category do |category|
  link "#{category.name}", category_path(category)
  parent :root
end

crumb :user do |user|
  link "マイページ", user_path(user)
  parent :root
end

crumb :itemlist do |itemlist|
  link "出品した商品-出品中", itemlist_user_path(current_user.id)
  parent :user
end