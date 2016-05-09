# class UserMailer < ApplicationMailer
#   def welcome_user (user)
#   @user = user
#   mail to: (@user.email), subject: "Welcome to the Vagabond community, #{@user.first_name}"
#   end
# end

class UserMailer < ActionMailer::Base
  default :from => "vagabond@scam.com"

  def registration_confirmation(user)
    attachments.inline['travel.gif'] = File.read('#{Rails.root}/app/assets/images/travel.gif')
    @user = user
    mail(:to => "#{user.first_name} <#{user.email}>", :subject =>"Welcome to the Vagabond community, #{user.first_name}")
  end


  # def welcome_user (user)
  # @user = user
  # mail to: (@user.email), subject: "Welcome to the Vagabond community, #{@user.first_name}"
  # end
end
