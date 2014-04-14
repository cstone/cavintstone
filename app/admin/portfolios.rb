ActiveAdmin.register Portfolio do
  menu :parent => "Portfolio"


  form do |f|
    f.inputs do
      f.input :title
      f.input :description, as: :html_editor
      f.input :website
      f.input :portfolio_category
      f.input :technologies, as: :check_boxes
      f.input :portfolio_image, :as => :file, :hint => f.object.portfolio_image.present? \
    ? f.template.image_tag(f.object.portfolio_image.url(:thumb))
      : f.template.content_tag(:span, "no photo yet")
      f.input :portfolio_image_cache, :as => :hidden
      f.input :remove_portfolio_image, as: :boolean, label: 'Check here to remove the current image.'
    end
    f.actions
  end
end
