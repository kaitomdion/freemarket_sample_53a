class CardsController < ApplicationController

  require "payjp"



  def new
    card = Card.where(user_id: current_user.id)
    redirect_to action: "show" if card.exists?
  end

  def create 
    Payjp.api_key =  Rails.application.credentials.pay_jp[:secret_access_key]
    if params['payjpToken'].blank?
      redirect_to action: "new"
    else
      customer = Payjp::Customer.create(
      card: params['payjpToken'],
      metadata: {user_id: current_user.id}
      )
      @card = Card.new(user_id: current_user.id, customer_id: customer.id, card_id: customer.default_card)

      if @card.save
        redirect_to controller: "items", action: 'index'
        flash[:notice] = 'クレジットカードの登録が完了しました'
      else
        redirect_to  action: 'new'
        flash[:alert] = 'クレジットカード登録に失敗しました'
        
      end
    end
  end

  def buy 

  if card.blank?
    redirect_to action: "new"
    flash[:alert] = '購入にはクレジットカード登録が必要です'
  else
    @item = Item.find(params[:item_id])
  
    card = current_user.card
    Payjp.api_key = Rails.application.credentials.pay_jp[:secret_access_key]
    Payjp::Charge.create(
    amount: @item.price,
    customer: card.customer_id, 
    currency: 'jpy', 
    )
    
    if @item.update(status: 1, buyer_id: current_user.id)
      flash[:notice] = '購入しました。'
      redirect_to controller: "items", action: 'index'
    else
      flash[:alert] = '購入に失敗しました。'
      redirect_to controller: "items", action: 'create'
    end
    
  end
end
end

