class RetreatAppMailer < ApplicationMailer

  def app_submitted(retreat_app)
    binding.pry
    @retreat_app = retreat_app
    email = retreat_app.user.email
    mail(to: email, subject: 'Application submitted')
  end
end
