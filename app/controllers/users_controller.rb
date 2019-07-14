class UsersController < ApplicationController
  
  before_action :move_to_index, except: [:new]


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

  private
  def move_to_index
    redirect_to new_user_path unless user_signed_in?
  end

end
