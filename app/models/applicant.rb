class Applicant < ActiveRecord::Base

has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/


NATIONALITY_LIST = ["Qatari", "nonQatari"]

SEX_LIST = ["ذكر", "أنثى"]

STATUS_LIST = ["أعزب", "متزوج"]

EDUCATION_LIST = ["لا يوجد","إبتدائي","إعدادي","ثانوي","جامعي"]

end