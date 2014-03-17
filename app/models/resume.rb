class Resume < ActiveRecord::Base
  attr_accessible :resume_pdf

  mount_uploader :resume_pdf, ResumeUploader
end
