class User < ActiveRecord::Base
  has_many :itineraries
  has_secure_password
  before_destroy :delete_itineraries

  validates :first_name, :last_name, :email,
  presence: true,
  length: {maximum: 255}, on: :create

  validates :email,
    uniqueness: true,
    format: {
      with: /(.+)@(.+)/,
      message: "not a valide format"
    }, on: :create

  validates :password, confirmation: true, on: :create
  validates :password_confirmation, presence: true, on: :create

  #sexyAF -jc
  def delete_itineraries
    self.itineraries.delete_all
  end

  def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user.try(:authenticate, params[:password])
  end

end
