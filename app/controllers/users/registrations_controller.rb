
# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController

  before_action :save_to_session, only: :sms_confirmation
  before_action :saves_to_session, only: :address

  def registration
    @user = User.new
  end

  def sms_confirmation
    @user = User.new
  end

  def sms_confirmation_sms
    @user = User.new
  end

  def address
    @user = User.new
  end

  def create
    super
    @user = User.new(
      email: session[:email], # sessionに保存された値をインスタンスに渡す
      password: session[:password],
      nickname: session[:nickname],
      last_name: session[:last_name],
      first_name: session[:first_name],
      kata_last_name: session[:kata_last_name],
      kata_first_name: session[:kata_first_name],
      birth_year: session[:birth_year],
      birth_month: session[:birth_month],
      birth_day: session[:birth_day],
      phone_number: session[:phone_number],
      postal_code: user_params[:postal_code],
      town: user_params[:town],
      shipping_region_id: user_params[:shipping_region_id]
    )
    @user.save
  end

  def edit
    super
  end

  def update
    super
  end

  def destroy
    super
  end


  protected

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :nickname, :last_name, :first_name, :kata_last_name, :kata_first_name, :birth_year, :birth_month, :birth_day, :phone_number, :postal_code, :town, :shipping_region_id)
  end

  def save_to_session
    session[:email] = user_params[:email]
    session[:password] = user_params[:password]
    session[:password_confirmation] = user_params[:password_confirmation]
    session[:nickname] = user_params[:nickname]
    session[:last_name] = user_params[:last_name]
    session[:first_name] = user_params[:first_name]
    session[:kata_last_name] = user_params[:kata_last_name]
    session[:kata_first_name] = user_params[:kata_first_name]
    session[:birth_year] = user_params[:birth_year]
    session[:birth_month] = user_params[:birth_month]
    session[:birth_day] =  user_params[:birth_day]
  end

  def saves_to_session
    session[:phone_number] = user_params[:phone_number]
  end


end