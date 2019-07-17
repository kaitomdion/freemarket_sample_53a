require 'rails_helper'
RSpec.describe Item, type: :model do
  describe '#create' do
    context '保存成功' do
      it 'ブランドがなくても保存できる' do
        expect(build(:item, brand_id: nil)).to be_valid
      end
    end
    context '保存失敗' do
      it '商品名が40文字以上だと保存できない' do
        item = build(:item, price: "100")
        item.valid?
        expect(item.errors[:price]).to include('を40文字以内で入力してください')
      end
    end
  end
end