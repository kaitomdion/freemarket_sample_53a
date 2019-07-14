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
    else
      redirect_to root_path
    end
  end

  def edit
  end


  def registration  
  end

  def sms_confirmation
  end

  def sms_confirmation_sms
  end

  def address
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
      @saleitem = Item.where(saler_id:current_user.id)
    else
      redirect_to root_path
    end
  end

  private
  def move_to_index
    redirect_to new_user_path unless user_signed_in?
  end

end
