require 'rails_helper'
RSpec.describe Item, type: :model do
 describe '#create' do
  context 'can save' do
   it 'ブランドがなくても保存できる' do
    expect(build(:item, brand_id: nil)).to be_valid
   end
  end
  context 'can not save' do
   it '商品名がないと保存できない' do
    item = build(:item, price: nil)
    item.valid?
    expect(item.errors[:price]).to include('を入力してください')
   end
  end
 end
end