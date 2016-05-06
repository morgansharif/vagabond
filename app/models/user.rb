class User < ActiveRecord::Base
  has_many :itineraries
  has_secure_password
  before_destroy :delete_itineraries

  #sexyAF -jc
  def delete_itineraries
    self.itineraries.delete_all
  end

  def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user.try(:authenticate, params[:password])
  end

end
