class LineidMailer < ApplicationMailer
  def send_mail(lineid)
    @lineid = lineid
    mail(
      from: "714encourage@gmail.com",
      to: "714encourage@gmail.com",
      subject: "エンターのLineID"
    )
  end
end
