ActiveAdmin.register Resume do

  menu :label => "Resume"

  form do |f|
    f.inputs "PDF" do
      f.file_field :resume_pdf
    end
    f.inputs "Remove Current Resume" do
      f.input :remove_resume_pdf, as: :boolean, label: 'Check here to remove the current resume.'
    end
    f.actions
  end


end
