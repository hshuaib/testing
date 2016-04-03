class UserMailer < ApplicationMailer

default from: 'hshuaib@qatar.cmu.edu'
 
  def welcome_email(applicant)
    @applicant = applicant[:name]
    @applicant = applicant[:email]
    @applicant = applicant[:qid]
    @url  = 'http://example.com/login'
    mail(to: @applicant.email, subject: 'New applicant info')
  end

end
