class UsersController < ApplicationController
  
  def index
  end
  
  def new 
    # @user = User.new
  end

  def show

    @user = User.find(params[:id])

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
    @saleitem = Item.where(saler_id:current_user.id)
  end
end
