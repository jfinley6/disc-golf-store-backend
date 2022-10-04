class FeedbackMailer < ApplicationMailer

  def send_feedback(feedback)
    @name = feedback.name
    @email = feedback.email
    @subject = feedback.subject
    @message = feedback.message

    mail(
      to: "outofboundsdiscs@gmail.com",
      subject: @subject
    ) 
  end
end
