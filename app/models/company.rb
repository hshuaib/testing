class Company < ActiveRecord::Base
  
  validates :companyName, :jobTitle, :jobDescription, :contactPerson, :mobileNo, :email, presence: true
  
end
