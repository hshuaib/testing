class Applicant < ActiveRecord::Base
  belongs_to :country
  has_many :disabilities
  

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" },
  :url => "/assets/applicants/:id/:style/:basename.:extension",
  :path => ":rails_root/public/assets/applicants/:id/:style/:basename.:extension"
  
  
  
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  validates :name,  presence: true


NATIONALITY_LIST = ["Qatari", "nonQatari"]

SEX_LIST = ["ذكر", "أنثى"]
SEX_LISTComp = ["ذكر", "أنثى", "لا يوجد"]

STATUS_LIST = ["أعزب", "متزوج", "مطلق"]

EDUCATION_LIST = ["لا يوجد","إبتدائي","إعدادي","ثانوي","جامعي"]

DISABILITY_LIST = ["حركية","ذهنية","بصرية","سنعية"]




#def validate!
#	errors.add(:name, "cannot be nil") if name.nil?
#end

end
