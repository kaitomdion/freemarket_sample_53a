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

crumb :brand do |brand|
  link "#{brand.name}", category_path(brand)
  parent :root
end

crumb :user do |user|
  link "マイページ", user_path(user)
  parent :root
end

