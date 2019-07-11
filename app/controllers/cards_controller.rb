class CardsController < ApplicationController

  require "payjp"

  def index
  end

  def new
    card = Card.where(user_id: current_user.id)
    redirect_to action: "show" if card.exists?
  end

  def create #クレジットカード登
    Payjp.api_key =  Rails.application.credentials.pay_jp[:secret_access_key]
    # ここでテスト鍵をセットしてあげる(環境変数にしても良い)
    if params['payjpToken'].blank?
    # paramsの中にjsで作った'payjpTokenが存在するか確かめる
      redirect_to action: "new"
    else
      customer = Payjp::Customer.create(
      card: params['payjpToken'],
      metadata: {user_id: current_user.id}
      )
     # ↑ここでpay.jpに保存
      @card = CreditCard.new(user_id: current_user.id, customer_id: customer.id, card_id: customer.default_card)
     # ここでdbに保存
      if @card.save
        redirect_to controller: "items", action: 'index'
        flash[:notice] = 'クレジットカードの登録が完了しました'
      else
        redirect_to controller: "cards", action: 'new'
        flash[:alert] = 'クレジットカード登録に失敗しました'
      end
    end
 end
end
