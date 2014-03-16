ActiveAdmin.register Page do

  controller do
    defaults :finder => :find_by_permalink
  end


  index do
    selectable_column
    column :name
    column :permalink
    column :content do |page|
      simple_format page.content.truncate(300)
    end
    default_actions
  end



  form do |f|
    f.inputs do
      f.input :name
      f.input :permalink
      f.input :content, as: :html_editor do |page|
        simple_format page.content
      end
    end
    f.actions
  end



  show do |page|
    attributes_table do
      row :id
      row :name
      row :permalink
      row :content do
        simple_format page.content
      end
      row :created_at
      row :updated_at
    end
    active_admin_comments
  end


end
