FactoryBot.define do

  factory :item do
    name                        {"mercarikun"}
    description                 {"メルカリのテスト"}
    price                       {"50000"}
    shipping_region_id          {"3"}
    shipping_method_id          {"2"}
    shipping_status_id          {"4"}
    shipping_day_id             {"1"}
    shipping_burden_id          {"2"}
    saler_id                    {"1"}
    item_status_id              {"1"}
    category_id                 {"481"}
    brand_id                    {"24"}
  end

end