class User < ActiveRecord::Base
  mount_uploader :img, AvatarUploader

  has_many :itineraries
  has_secure_password
  after_create :send_welcome_email
  before_destroy :delete_itineraries

  validates :first_name, :last_name, :email,
  presence: true,
  length: {maximum: 255}, on: :create

  validates :email,
    uniqueness: true,
    format: {
      with: /(.+)@(.+)/,
      message: "not a valid format"
    }, on: :create

  #sexyAF -jc
  def delete_itineraries
    self.itineraries.delete_all
  end

  #Welcome Email
  def send_welcome_email
    UserMailer.welcome_user(self).deliver_now
  end


  def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user.try(:authenticate, params[:password])
  end

  def avatar
    img.present? ? img.url : "userprofile.png"
  end


end
