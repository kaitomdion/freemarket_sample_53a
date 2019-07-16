require 'rails_helper'

RSpec.describe Item, type: :model do
  describe '#create' do

    context 'can not save' do
      it '地域idが空だと登録できない' do
        item = build(:item, name: "")
        item.valid?
        expect(item.errors[:name]).to include('を入力してください')
      end

      
    end
  end
end
