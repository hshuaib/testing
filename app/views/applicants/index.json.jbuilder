json.array!(@applicants) do |applicant|
  json.extract! applicant, :id, :name, :QID, :nationality, :DateOfBirth, :gender, :status, :noOfChildren, :livingArea, :phoneNo, :mobileNo, :disability, :details, :notes, :age, :reason, :education, :workshop, :currentJob, :jobDescription, :abilities, :preference, :skills
  json.url applicant_url(applicant, format: :json)
end
