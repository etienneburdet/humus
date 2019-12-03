class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.facturation.subject
  #
  def facturation
    @user = params[:user]
    @contract = params[:contract]
    # @project = @contract.project
    mail(to: @user.email, subject: 'Facture Humus')
  end
end
