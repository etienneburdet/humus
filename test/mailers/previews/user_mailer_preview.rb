# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/facturation
  def facturation
    user = User.first
    UserMailer.with(user: user).facturation
  end

end
