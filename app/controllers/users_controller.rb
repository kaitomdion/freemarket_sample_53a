class UsersController < ApplicationController
  
  before_action :move_to_index, except: [:new]
  before_action :login_user, only: [:new]
  before_action :parent

  def index
  end
  
  def new 
    
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
    @user = User.find(params[:id])
    @users = User.new
  end

  def update
    user = User.find(params[:id])
    users = user_params.delete_if{|k, val| val == ""}
    user.update(users)
    redirect_to  user_path(current_user.id)
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

  def user_params
    params.require(:user).permit(:postal_code, :town, :shipping_region_id)
  end

  def login_user
    if current_user
      redirect_to root_path
    end
  end

end
