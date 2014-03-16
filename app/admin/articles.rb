ActiveAdmin.register Article do
  index do
    selectable_column
    column :title
    column :body
    column :published
    column :published_at
    default_actions
  end
end
