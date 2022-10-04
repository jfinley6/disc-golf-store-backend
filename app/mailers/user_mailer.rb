class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.user_created.subject
  #
  def user_created(email)
    @user = User.find_by(email: email)
    @greeting = "Hello #{@user.username}!"

    mail(
      to: @user.email, 
      subject: "Welcome to Out of Bounds Discs!"
    )
  end
end
