require 'rails_helper'

RSpec.describe Item, type: :model do
  describe '#create' do

    context '保存できません！' do
      it '空の場合' do
        item = build(:item, name: nil)
        item.valid?
        expect(item.errors[:name]).to include('を入力してください')
      end

      
    end
  end
end