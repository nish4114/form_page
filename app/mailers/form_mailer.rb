class FormMailer < ApplicationMailer
 def registration_mail(form)
  mail(to: form.email, subject: 'JobzGo Registration')
 end
end
