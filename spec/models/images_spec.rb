require 'rails_helper'

RSpec.describe Image, type: :model do
  describe '#create' do

    context 'can not save' do
      it '地域idが空だと登録できない' do
        image = build(:image, url: nil)
        image.valid?
        expect(image.errors[:url]).to include('を入力してください')
      end

      
    end
  end
end
