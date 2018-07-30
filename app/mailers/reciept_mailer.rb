class RecieptMailer < ApplicationMailer
  default from: 'notifications@example.com'

 def reciept_email
   @purchase = params[:purchase]
   mail(to: @purchase.email, subject: 'Your Movie Tickets Reciept')
 end
end
