class Company < ActiveRecord::Base
  
  belongs_to :country
  validates :companyName, :jobTitle, :jobDescription, :contactPerson, :mobileNo, :email, presence: true
  
end
