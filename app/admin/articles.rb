ActiveAdmin.register Article do
  index do
    selectable_column
    column :article_image do |article|
      image_tag(article.article_image.url(:thumb))
    end
    column :title
    column :body
    column :published
    column :published_at
    default_actions
  end
end
