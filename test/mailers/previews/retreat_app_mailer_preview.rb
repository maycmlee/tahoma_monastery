# Preview all emails at http://localhost:3000/rails/mailers/retreat_app_mailer
class RetreatAppMailerPreview < ActionMailer::Preview
  def app_submitted_preview
    RetreatAppMailer.app_submitted(User.all[1].retreat_applications.first)
  end
end
