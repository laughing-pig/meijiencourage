class LineidMailer < ApplicationMailer
  default from: ENV["GMAIL_ADDRESS"]

  def send_mail(lineid)
    @lineid = lineid
    mail(
      to: ENV["GMAIL_ADDRESS"],
      subject: "エンターのLineID"
    )
  end
end
