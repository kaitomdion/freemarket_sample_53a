class UsersController < ApplicationController
  
  before_action :move_to_index, except: [:new]


  def index
  end
  
  def new 
    # @user = User.new
  end

  def show
    @user = User.find(params[:id])
    if @user.id == current_user.id
      @user = User.find(params[:id])
      @transactionItem_buy = Item.where(buyer_id:current_user.id, item_status_id:2)
    else
      redirect_to root_path
    end
  end

  def edit
  end

  def credit_card
  end
  
  def done
  end

  def logout
  end

  def account_information
  end

  def itemlist
    @user = User.find(params[:id])
    if @user.id == current_user.id
       @saleitem = Item.where(saler_id:current_user.id).where(item_status_id:1)
    else
      redirect_to root_path
    end
  end

  def itemlist_transnow_sale
    @user = User.find(params[:id])
    if @user.id == current_user.id
       @transactionItem = Item.where(saler_id:current_user.id, item_status_id:2)
    else
      redirect_to root_path
    end
  end

  def itemlist_transnow_buy
    @user = User.find(params[:id])
    if @user.id == current_user.id
       @transactionItem_buy = Item.where(buyer_id:current_user.id, item_status_id:2)
    else
      redirect_to root_path
    end
  end

  def profile_edit
  end

  private
  def move_to_index
    redirect_to new_user_path unless user_signed_in?
  end

end
