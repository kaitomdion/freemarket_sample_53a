class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :images, dependent: :destroy
  has_many :items, dependent: :destroy
  has_many :likes, dependent: :destroy
  belongs_to :shipping_region, optional: true

  validates :nickname, presence: true, on: :registration
  validates :last_name, presence: true, on: :registration
  validates :first_name, presence: true, on: :registration
  validates :kata_last_name, presence: true, on: :registration
  validates :kata_first_name, presence: true, on: :registration
  validates :birth_year, presence: true, on: :registration
  validates :birth_month, presence: true, on: :registration
  validates :birth_day, presence: true, on: :registration
  validates :phone_number, presence: true, on: :sms_confirmation
  validates :postal_code, presence: true, on: :address
  validates :town, presence: true, on: :address


  protected
  def password_required?
    if validation_context == :new
      !persisted? || !password.nil? || !password_confirmation.nil?
    end
  end

  def email_required?
    if validation_context == :new
      true
    end
  end

end
