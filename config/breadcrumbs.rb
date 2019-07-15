crumb :root do
  link "メルカリ", root_path
end

crumb :item do |item|
  link "#{item.name}", item_path(item)
  parent :root
end

crumb :search do 
  link params[:search], search_items_path
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

crumb :account do |user|
  link "本人情報の登録", account_information_user_path(user)
  parent :user, user
end

crumb :itemlist do |user|
  link "出品した商品-出品中", itemlist_user_path(user)
  parent :user, user
end
